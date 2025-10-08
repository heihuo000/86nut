#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
pvfUtility WebApi 代理服务器 (移动端优化版)
解决pvfUtility只允许localhost访问的限制，允许局域网访问
专为安卓设备优化，支持分页、过滤、压缩和缓存

作者: AI Assistant
功能: 
- 转发所有API请求到localhost:27000
- 支持GET和POST请求
- 支持CORS跨域访问
- 允许局域网访问
- 分页功能，减少大数据传输
- 数据过滤和搜索
- 响应压缩，节省流量
- 智能缓存，提高响应速度
"""

from flask import Flask, request, jsonify, Response, g
from flask_cors import CORS
import requests
import json
import logging
import gzip
import time
import hashlib
from urllib.parse import urljoin
from functools import wraps
from datetime import datetime, timedelta

# 配置日志
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler('pvf_proxy.log', encoding='utf-8'),
        logging.StreamHandler()
    ]
)

app = Flask(__name__)
CORS(app)  # 启用CORS支持

# pvfUtility API基础URL
PVF_API_BASE = "http://localhost:27000"

# 缓存配置
CACHE = {}
CACHE_TIMEOUT = 300  # 5分钟缓存
MAX_CACHE_SIZE = 100  # 最大缓存条目数

# 移动端优化配置
MOBILE_PAGE_SIZE = 50  # 移动端默认分页大小
MAX_PAGE_SIZE = 200   # 最大分页大小

def get_cache_key(url, params):
    """生成缓存键"""
    cache_string = f"{url}_{json.dumps(params, sort_keys=True)}"
    return hashlib.md5(cache_string.encode()).hexdigest()

def get_from_cache(cache_key):
    """从缓存获取数据"""
    if cache_key in CACHE:
        cached_data, timestamp = CACHE[cache_key]
        if time.time() - timestamp < CACHE_TIMEOUT:
            logging.info(f"缓存命中: {cache_key}")
            return cached_data
        else:
            # 缓存过期，删除
            del CACHE[cache_key]
            logging.info(f"缓存过期: {cache_key}")
    return None

def set_cache(cache_key, data):
    """设置缓存"""
    # 如果缓存已满，删除最旧的条目
    if len(CACHE) >= MAX_CACHE_SIZE:
        oldest_key = min(CACHE.keys(), key=lambda k: CACHE[k][1])
        del CACHE[oldest_key]
        logging.info(f"缓存已满，删除最旧条目: {oldest_key}")
    
    CACHE[cache_key] = (data, time.time())
    logging.info(f"数据已缓存: {cache_key}")

def compress_response(data):
    """压缩响应数据"""
    if isinstance(data, dict):
        data = json.dumps(data, ensure_ascii=False)
    
    if isinstance(data, str):
        data = data.encode('utf-8')
    
    return gzip.compress(data)

def should_compress(request):
    """判断是否应该压缩响应"""
    accept_encoding = request.headers.get('Accept-Encoding', '')
    return 'gzip' in accept_encoding.lower()

def paginate_data(data, page=1, page_size=MOBILE_PAGE_SIZE):
    """分页处理数据"""
    if not isinstance(data, list):
        return data, {"total": 1, "page": 1, "page_size": 1, "total_pages": 1}
    
    total = len(data)
    page = max(1, page)
    page_size = min(page_size, MAX_PAGE_SIZE)
    
    start_idx = (page - 1) * page_size
    end_idx = start_idx + page_size
    
    paginated_data = data[start_idx:end_idx]
    
    pagination_info = {
        "total": total,
        "page": page,
        "page_size": page_size,
        "total_pages": (total + page_size - 1) // page_size,
        "has_next": end_idx < total,
        "has_prev": page > 1
    }
    
    return paginated_data, pagination_info

def filter_data(data, search_term=None, filter_field=None):
    """过滤数据"""
    if not isinstance(data, list) or not search_term:
        return data
    
    filtered_data = []
    search_term = search_term.lower()
    
    for item in data:
        if isinstance(item, dict):
            # 在字典中搜索
            if filter_field and filter_field in item:
                # 指定字段搜索
                if search_term in str(item[filter_field]).lower():
                    filtered_data.append(item)
            else:
                # 全字段搜索
                if any(search_term in str(value).lower() for value in item.values()):
                    filtered_data.append(item)
        elif isinstance(item, str):
            # 字符串搜索
            if search_term in item.lower():
                filtered_data.append(item)
    
    return filtered_data

@app.route('/', methods=['GET'])
def index():
    """首页，显示API使用说明"""
    return jsonify({
        "message": "pvfUtility WebApi 代理服务器 (移动端优化版)",
        "version": "2.0.0",
        "description": "转发API请求到pvfUtility，专为安卓设备优化",
        "features": [
            "分页查询 - 减少大数据传输",
            "数据过滤 - 精确搜索结果", 
            "响应压缩 - 节省网络流量",
            "智能缓存 - 提高响应速度"
        ],
        "usage": {
            "base_url": f"http://192.168.1.6:{request.environ.get('SERVER_PORT', 8080)}",
            "examples": [
                "/Api/PvfUtiltiy/getVersion",
                "/Api/PvfUtiltiy/getPvfRootDirectory",
                "/Api/PvfUtiltiy/GetFileList?dirName=equipment&returnType=0",
                "/mobile/GetFileList?dirName=equipment&page=1&page_size=20&search=sword"
            ]
        },
        "mobile_params": {
            "page": "页码 (默认: 1)",
            "page_size": f"每页大小 (默认: {MOBILE_PAGE_SIZE}, 最大: {MAX_PAGE_SIZE})",
            "search": "搜索关键词",
            "filter_field": "指定搜索字段",
            "compress": "启用压缩 (true/false)"
        },
        "cache_info": {
            "timeout": f"{CACHE_TIMEOUT}秒",
            "max_size": f"{MAX_CACHE_SIZE}条",
            "current_size": len(CACHE)
        },
        "original_api": "http://localhost:27000"
    })

@app.route('/Api/<path:api_path>', methods=['GET', 'POST', 'PUT', 'DELETE'])
def proxy_api(api_path):
    """代理所有API请求到pvfUtility"""
    try:
        # 构建目标URL
        target_url = urljoin(PVF_API_BASE, f"/Api/{api_path}")
        
        # 获取查询参数
        query_params = request.args.to_dict()
        
        # 记录请求信息
        logging.info(f"代理请求: {request.method} {target_url}")
        logging.info(f"查询参数: {query_params}")
        
        # 根据请求方法转发
        if request.method == 'GET':
            response = requests.get(target_url, params=query_params, timeout=30)
        elif request.method == 'POST':
            # 获取POST数据
            if request.is_json:
                json_data = request.get_json()
                response = requests.post(target_url, json=json_data, params=query_params, timeout=30)
                logging.info(f"POST JSON数据: {json_data}")
            else:
                form_data = request.form.to_dict()
                response = requests.post(target_url, data=form_data, params=query_params, timeout=30)
                logging.info(f"POST表单数据: {form_data}")
        elif request.method == 'PUT':
            if request.is_json:
                json_data = request.get_json()
                response = requests.put(target_url, json=json_data, params=query_params, timeout=30)
            else:
                form_data = request.form.to_dict()
                response = requests.put(target_url, data=form_data, params=query_params, timeout=30)
        elif request.method == 'DELETE':
            response = requests.delete(target_url, params=query_params, timeout=30)
        
        # 记录响应信息
        logging.info(f"响应状态码: {response.status_code}")
        
        # 创建响应对象
        proxy_response = Response(
            response.content,
            status=response.status_code,
            headers=dict(response.headers)
        )
        
        # 添加CORS头
        proxy_response.headers['Access-Control-Allow-Origin'] = '*'
        proxy_response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
        proxy_response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Authorization'
        
        return proxy_response
        
    except requests.exceptions.ConnectionError:
        logging.error("无法连接到pvfUtility API服务器")
        return jsonify({
            "error": "无法连接到pvfUtility API服务器",
            "message": "请确保pvfUtility软件正在运行且WebApi功能已启用",
            "target_url": target_url
        }), 503
        
    except requests.exceptions.Timeout:
        logging.error("请求超时")
        return jsonify({
            "error": "请求超时",
            "message": "pvfUtility API响应超时",
            "target_url": target_url
        }), 504
        
    except Exception as e:
        logging.error(f"代理请求失败: {str(e)}")
        return jsonify({
            "error": "代理请求失败",
            "message": str(e),
            "target_url": target_url
        }), 500

@app.route('/health', methods=['GET'])
def health_check():
    """健康检查接口"""
    try:
        # 测试pvfUtility连接
        response = requests.get(f"{PVF_API_BASE}/Api/PvfUtiltiy/getVersion", timeout=5)
        pvf_status = "online" if response.status_code == 200 else "error"
        pvf_version = response.json().get('Data', 'unknown') if response.status_code == 200 else None
    except:
        pvf_status = "offline"
        pvf_version = None
    
    return jsonify({
        "proxy_status": "online",
        "pvfUtility_status": pvf_status,
        "pvfUtility_version": pvf_version,
        "proxy_url": f"http://192.168.1.6:{request.environ.get('SERVER_PORT', 8080)}",
        "target_url": PVF_API_BASE
    })

@app.route('/mobile/<path:path>', methods=['GET'])
def mobile_proxy(path):
    """移动端优化的API代理"""
    try:
        # 获取请求参数
        params = request.args.to_dict()
        
        # 提取移动端参数
        page = int(params.pop('page', 1))
        page_size = int(params.pop('page_size', MOBILE_PAGE_SIZE))
        search_term = params.pop('search', None)
        filter_field = params.pop('filter_field', None)
        enable_compress = params.pop('compress', 'true').lower() == 'true'
        
        # 生成缓存键
        cache_key = get_cache_key(f"mobile/{path}", {**params, 'search': search_term, 'filter_field': filter_field})
        
        # 尝试从缓存获取数据
        cached_data = get_from_cache(cache_key)
        if cached_data:
            # 应用分页
            if isinstance(cached_data, dict) and 'Data' in cached_data and isinstance(cached_data['Data'], list):
                filtered_data = filter_data(cached_data['Data'], search_term, filter_field)
                paginated_data, pagination_info = paginate_data(filtered_data, page, page_size)
                
                result = {
                    **cached_data,
                    'Data': paginated_data,
                    'Pagination': pagination_info,
                    'FromCache': True
                }
            else:
                result = cached_data
            
            # 压缩响应
            if enable_compress and should_compress(request):
                compressed_data = compress_response(result)
                response = app.response_class(
                    compressed_data,
                    mimetype='application/json',
                    headers={'Content-Encoding': 'gzip'}
                )
                return response
            
            return jsonify(result)
        
        # 构建目标URL
        target_url = f"{PVF_API_BASE}/{path}"
        
        # 发送请求到原始API
        response = requests.get(target_url, params=params, timeout=30)
        
        if response.status_code == 200:
            data = response.json()
            
            # 缓存原始数据
            set_cache(cache_key, data)
            
            # 处理数据
            if isinstance(data, dict) and 'Data' in data and isinstance(data['Data'], list):
                # 过滤数据
                filtered_data = filter_data(data['Data'], search_term, filter_field)
                
                # 分页处理
                paginated_data, pagination_info = paginate_data(filtered_data, page, page_size)
                
                result = {
                    **data,
                    'Data': paginated_data,
                    'Pagination': pagination_info,
                    'FromCache': False
                }
            else:
                result = data
            
            # 记录日志
            logging.info(f"移动端请求: GET {target_url} - 状态码: {response.status_code} - 分页: {page}/{page_size}")
            
            # 压缩响应
            if enable_compress and should_compress(request):
                compressed_data = compress_response(result)
                response = app.response_class(
                    compressed_data,
                    mimetype='application/json',
                    headers={'Content-Encoding': 'gzip'}
                )
                return response
            
            return jsonify(result)
        else:
            return jsonify(response.json()), response.status_code
            
    except ValueError as e:
        return jsonify({
            "error": "参数错误",
            "message": f"页码或页面大小必须是数字: {str(e)}"
        }), 400
    except requests.exceptions.RequestException as e:
        logging.error(f"移动端代理请求失败: {str(e)}")
        return jsonify({
            "error": "代理请求失败",
            "message": str(e)
        }), 500
    except Exception as e:
        logging.error(f"移动端代理未知错误: {str(e)}")
        return jsonify({
             "error": "服务器内部错误",
             "message": str(e)
         }), 500

@app.route('/<path:path>', methods=['GET', 'POST', 'PUT', 'DELETE', 'PATCH'])
def proxy(path):
    """标准API代理（保持向后兼容）"""
    try:
        # 获取请求参数
        params = request.args.to_dict()
        
        # 对于GET请求，尝试使用缓存
        if request.method == 'GET':
            cache_key = get_cache_key(path, params)
            cached_data = get_from_cache(cache_key)
            if cached_data:
                logging.info(f"标准代理缓存命中: {path}")
                return jsonify(cached_data)
        
        # 构建目标URL
        target_url = f"{PVF_API_BASE}/{path}"
        
        # 转发请求
        if request.method == 'GET':
            response = requests.get(target_url, params=params, timeout=30)
        elif request.method == 'POST':
            response = requests.post(target_url, json=request.get_json(), params=params, timeout=30)
        elif request.method == 'PUT':
            response = requests.put(target_url, json=request.get_json(), params=params, timeout=30)
        elif request.method == 'DELETE':
            response = requests.delete(target_url, params=params, timeout=30)
        elif request.method == 'PATCH':
            response = requests.patch(target_url, json=request.get_json(), params=params, timeout=30)
        
        # 记录请求日志
        logging.info(f"标准代理请求: {request.method} {target_url} - 状态码: {response.status_code}")
        
        # 对于成功的GET请求，缓存结果
        if request.method == 'GET' and response.status_code == 200:
            try:
                data = response.json()
                cache_key = get_cache_key(path, params)
                set_cache(cache_key, data)
            except:
                pass  # 如果缓存失败，不影响正常响应
        
        # 返回响应
        return jsonify(response.json()), response.status_code
        
    except requests.exceptions.RequestException as e:
        logging.error(f"标准代理请求失败: {str(e)}")
        return jsonify({
            "error": "代理请求失败",
            "message": str(e),
            "target_url": target_url
        }), 500
    except Exception as e:
        logging.error(f"标准代理未知错误: {str(e)}")
        return jsonify({
            "error": "服务器内部错误",
            "message": str(e)
        }), 500

@app.route('/cache/info', methods=['GET'])
def cache_info():
    """获取缓存信息"""
    return jsonify({
        "cache_size": len(CACHE),
        "max_cache_size": MAX_CACHE_SIZE,
        "cache_timeout": CACHE_TIMEOUT,
        "cache_keys": list(CACHE.keys())[:10]  # 只显示前10个键
    })

@app.route('/cache/clear', methods=['POST'])
def clear_cache():
    """清空缓存"""
    global CACHE
    cache_size = len(CACHE)
    CACHE.clear()
    logging.info("缓存已清空")
    return jsonify({
        "message": "缓存已清空",
        "cleared_items": cache_size
    })

@app.errorhandler(404)
def not_found(error):
    """404错误处理"""
    return jsonify({
        "error": "API路径未找到",
        "message": "请检查API路径是否正确",
        "available_endpoints": [
            "/",
            "/health",
            "/Api/PvfUtiltiy/getVersion",
            "/Api/PvfUtiltiy/getPvfRootDirectory"
        ]
    }), 404

if __name__ == '__main__':
    print("=" * 60)
    print("pvfUtility WebApi 代理服务器启动中...")
    print("=" * 60)
    print(f"代理服务器地址: http://192.168.1.6:8080")
    print(f"目标API地址: {PVF_API_BASE}")
    print("=" * 60)
    print("使用示例:")
    print("  获取版本: http://192.168.1.6:8080/Api/PvfUtiltiy/getVersion")
    print("  获取目录: http://192.168.1.6:8080/Api/PvfUtiltiy/getPvfRootDirectory")
    print("  健康检查: http://192.168.1.6:8080/health")
    print("=" * 60)
    
    # 启动服务器，绑定到所有网络接口
    app.run(
        host='0.0.0.0',  # 绑定到所有网络接口，允许局域网访问
        port=8080,       # 使用8080端口
        debug=False,     # 生产环境关闭调试模式
        threaded=True    # 启用多线程支持
    )