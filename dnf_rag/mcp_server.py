#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DNF知识库RAG系统的MCP服务器
用于集成到Qwen Code CLI
"""

import json
import sys
import os
from typing import Dict, Any, List
import asyncio
import threading  # 新增：用于后台初始化RAG服务器

# 添加当前目录到Python路径
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from simple_rag_server import SimpleDNFRAGServer


class DNFRAGMCPServer:
    """DNF RAG MCP服务器
    - 延迟初始化：避免在进程启动阶段进行索引加载，提升握手响应速度
    """
    
    def __init__(self):
        self.rag_server = None  # 延迟到首次调用工具时再初始化
        # 以前在这里调用 init_rag_server()，现改为懒加载，避免阻塞 MCP initialize 握手
    
    def init_rag_server(self):
        """初始化RAG服务器（可能较耗时），失败时抛出异常并记录到stderr"""
        try:
            index_path = "data/simple_index.pkl"
            config_path = "config/config.json"
            
            # 检查文件是否存在
            if not os.path.exists(index_path):
                raise FileNotFoundError(f"索引文件不存在: {index_path}")
            
            self.rag_server = SimpleDNFRAGServer(index_path, config_path)
            print("[OK] DNF RAG服务器初始化成功", file=sys.stderr)
        except Exception as e:
            print(f"[ERROR] RAG服务器初始化失败: {e}", file=sys.stderr)
            raise
    
    def get_tools(self) -> List[Dict[str, Any]]:
        """获取工具列表"""
        return [
            {
                "name": "dnf_knowledge_search",
                "description": "在DNF知识库中搜索相关信息，支持装备、技能、文件格式等查询",
                "inputSchema": {
                    "type": "object",
                    "properties": {
                        "query": {
                            "type": "string",
                            "description": "搜索查询，例如：'如何修改装备属性'、'PVF文件格式'、'技能文件结构'等"
                        },
                        "k": {
                            "type": "integer",
                            "description": "返回结果数量，默认为5",
                            "default": 5,
                            "minimum": 1,
                            "maximum": 10
                        }
                    },
                    "required": ["query"]
                }
            },
            {
                "name": "dnf_knowledge_qa",
                "description": "基于DNF知识库回答问题，提供详细的操作指导和代码示例",
                "inputSchema": {
                    "type": "object",
                    "properties": {
                        "question": {
                            "type": "string",
                            "description": "关于DNF文件修改的问题，例如：'如何创建新装备？'、'技能文件怎么配置？'等"
                        },
                        "context_size": {
                            "type": "integer",
                            "description": "检索上下文数量，默认为5",
                            "default": 5,
                            "minimum": 1,
                            "maximum": 10
                        }
                    },
                    "required": ["question"]
                }
            },
            {
                "name": "dnf_file_format_check",
                "description": "检查DNF文件格式规范，提供格式验证和修正建议",
                "inputSchema": {
                    "type": "object",
                    "properties": {
                        "file_type": {
                            "type": "string",
                            "description": "文件类型，如：'equ'(装备)、'skl'(技能)、'chr'(角色)、'stk'(消耗品)等",
                            "enum": ["equ", "skl", "chr", "stk", "ani", "atk", "lay", "obj", "sho", "map", "mob", "nut"]
                        },
                        "content": {
                            "type": "string",
                            "description": "文件内容或代码片段"
                        }
                    },
                    "required": ["file_type"]
                }
            }
        ]
    
    def call_tool(self, name: str, arguments: Dict[str, Any]) -> Dict[str, Any]:
        """调用工具"""
        try:
            if name == "dnf_knowledge_search":
                return self._handle_search(arguments)
            elif name == "dnf_knowledge_qa":
                return self._handle_qa(arguments)
            elif name == "dnf_file_format_check":
                return self._handle_format_check(arguments)
            else:
                return {
                    "error": f"未知工具: {name}",
                    "success": False
                }
        except Exception as e:
            return {
                "error": str(e),
                "success": False
            }
    
    def _handle_search(self, arguments: Dict[str, Any]) -> Dict[str, Any]:
        """处理搜索请求（懒加载RAG服务器）"""
        query = arguments["query"]
        k = arguments.get("k", 5)
        
        if not self.rag_server:
            try:
                self.init_rag_server()
            except Exception as e:
                return {"error": f"RAG服务器初始化失败: {e}", "success": False}
        
        results = self.rag_server.vector_search(query, k)
        
        # 格式化结果
        formatted_results = []
        for result in results:
            formatted_results.append({
                "content": result["content"][:500] + "..." if len(result["content"]) > 500 else result["content"],
                "source": result["metadata"].get("source", "未知来源"),
                "score": result.get("score", 0)
            })
        
        return {
            "success": True,
            "query": query,
            "results": formatted_results,
            "total_found": len(results)
        }
    
    def _handle_qa(self, arguments: Dict[str, Any]) -> Dict[str, Any]:
        """处理问答请求（懒加载RAG服务器）"""
        question = arguments["question"]
        context_size = arguments.get("context_size", 5)
        
        if not self.rag_server:
            try:
                self.init_rag_server()
            except Exception as e:
                return {"error": f"RAG服务器初始化失败: {e}", "success": False}
        
        # 处理完整的查询流程
        result = self.rag_server.process_query(question, context_size)
        
        return {
            "success": True,
            "question": question,
            "answer": result["answer"],
            "sources": [
                {
                    "source": r["metadata"].get("source", "未知来源"),
                    "score": r.get("score", 0)
                }
                for r in result["search_results"]
            ],
            "timestamp": result["timestamp"]
        }
    
    def _handle_format_check(self, arguments: Dict[str, Any]) -> Dict[str, Any]:
        """处理格式检查请求（懒加载RAG服务器）"""
        file_type = arguments["file_type"]
        content = arguments.get("content", "")
        
        # 构建格式检查查询
        format_query = f"{file_type}文件格式规范 标签要求 格式检查"
        
        if not self.rag_server:
            try:
                self.init_rag_server()
            except Exception as e:
                return {"error": f"RAG服务器初始化失败: {e}", "success": False}
        
        # 搜索相关格式信息
        search_results = self.rag_server.vector_search(format_query, 3)
        
        # 构建格式检查提示
        if content:
            check_query = f"请检查以下{file_type}文件内容的格式是否正确：\n\n{content}\n\n请指出格式问题并提供修正建议。"
        else:
            check_query = f"请提供{file_type}文件的标准格式要求和示例。"
        
        # 生成格式检查结果
        result = self.rag_server.process_query(check_query, 3)
        
        return {
            "success": True,
            "file_type": file_type,
            "format_check": result["answer"],
            "references": [
                {
                    "source": r["metadata"].get("source", "未知来源"),
                    "content_preview": r["content"][:200] + "..." if len(r["content"]) > 200 else r["content"]
                }
                for r in search_results
            ]
        }


# 全局服务器单例与RAG初始化标记
G_SERVER = None  # 单例 DNFRAGMCPServer 实例
RAG_INIT_STARTED = False  # 是否已开始后台初始化
RAG_INIT_DONE = False     # 初始化是否完成
RAG_INIT_ERROR = None     # 初始化错误（如有）

def handle_mcp_request(request: Dict[str, Any]) -> Dict[str, Any]:
    """处理MCP请求，返回该方法的结果对象（不包含JSON-RPC包裹）
    - 支持基础工具的方法：tools/list, tools/call
    - 兼容常见客户端方法：ping（健康检查）、logging/setLevel（日志级别设置）
    - 为兼容性提供空实现：prompts/list, resources/list（如果客户端误调用也能正常返回）
    """
    global G_SERVER
    method = request.get("method")
    params = request.get("params", {})

    # 复用全局单例，避免每次请求都新建实例导致重复初始化
    if G_SERVER is None:
        G_SERVER = DNFRAGMCPServer()

    if method == "tools/list":
        return {
            "tools": G_SERVER.get_tools()
        }

    elif method == "tools/call":
        tool_name = params.get("name")
        arguments = params.get("arguments", {})
        # 如果RAG正在后台初始化且尚未完成，快速返回提示，避免客户端超时
        if not G_SERVER.rag_server and RAG_INIT_STARTED and not RAG_INIT_DONE and not RAG_INIT_ERROR:
            return {
                "content": [
                    {"type": "text", "text": "RAG服务器正在后台初始化，请稍后重试（避免启动阶段超时）。"}
                ]
            }
        result = G_SERVER.call_tool(tool_name, arguments)
        return {
            "content": [
                {
                    "type": "text",
                    "text": json.dumps(result, ensure_ascii=False, indent=2)
                }
            ]
        }

    elif method == "ping":
        # 健康检查：客户端可能在启动时探测服务是否可用
        return {"ok": True}

    elif method == "logging/setLevel":
        # 兼容日志级别设置（无副作用）
        level = params.get("level", "info")
        print(f"[INFO] 客户端设置日志级别: {level}", file=sys.stderr)
        return {}

    elif method == "prompts/list":
        # 兼容性返回空列表，避免客户端误调用时报错
        return {"prompts": []}

    elif method == "resources/list":
        # 兼容性返回空列表，避免客户端误调用时报错
        return {"resources": []}

    else:
        # 未知方法，抛出异常交由上层包装为JSON-RPC错误
        raise ValueError(f"不支持的方法: {method}")


def handle_jsonrpc_request(request: Dict[str, Any]) -> Dict[str, Any]:
    """按照JSON-RPC 2.0协议处理请求并返回合法的响应包裹
    - 支持 initialize 握手：返回 protocolVersion 与 capabilities，满足 MCP 规范要求
    - 支持 notifications（无 id）：对于 notifications/initialized 等通知消息不返回响应
    - 其余请求委托到 handle_mcp_request 并包裹为 JSON-RPC 响应
    """
    global RAG_INIT_STARTED, RAG_INIT_DONE, RAG_INIT_ERROR, G_SERVER
    req_id = request.get("id")  # 可能为 None（通知）
    jsonrpc_ver = request.get("jsonrpc")
    method = request.get("method")
    params = request.get("params", {}) or {}

    # 处理通知（无 id）：MCP 规范要求不返回任何响应
    if req_id is None and isinstance(method, str):
        if method == "notifications/initialized":
            # 客户端声明已完成初始化——此时启动后台RAG加载，避免首次工具调用超时
            print("[INFO] 收到客户端初始化完成通知", file=sys.stderr)
            if G_SERVER is None:
                G_SERVER = DNFRAGMCPServer()
            if not RAG_INIT_STARTED:
                RAG_INIT_STARTED = True
                def _bg_init():
                    try:
                        G_SERVER.init_rag_server()
                        RAG_INIT_DONE = True
                        print("[OK] RAG后台初始化完成", file=sys.stderr)
                    except Exception as e:
                        RAG_INIT_ERROR = str(e)
                        print(f"[ERROR] RAG后台初始化失败: {e}", file=sys.stderr)
                threading.Thread(target=_bg_init, daemon=True).start()
            return None  # 通知不写回
        # 其他通知类型（如日志、心跳）按需忽略
        return None

    # 非 2.0 的请求返回错误
    if jsonrpc_ver != "2.0":
        return {
            "jsonrpc": "2.0",
            "id": req_id,
            "error": {"code": -32600, "message": "Invalid Request: jsonrpc must be \"2.0\""}
        }

    try:
        # 初始化握手：服务器需返回 protocolVersion 与 capabilities
        if method == "initialize":
            client_protocol = params.get("protocolVersion")
            # 若客户端未提供版本，使用当前规范版本（与 Trae/Claude 兼容的最新）
            server_protocol = client_protocol or "2025-03-26"
            result = {
                "protocolVersion": server_protocol,
                "capabilities": {
                    # 最小能力集：仅声明 tools，避免客户端额外请求 prompts/resources 等未实现接口
                    "tools": {},
                    # 兼容性声明：客户端若探测这两类接口也不会报错
                    "prompts": {},
                    "resources": {},
                    "logging": {}
                },
                "serverInfo": {"name": "dnf_rag", "version": "0.1.0"},
                # 可选 instructions：提示客户端如何使用本服务器
                "instructions": "DNF RAG MCP 服务器已就绪，可使用 tools/list 获取可用工具并进行调用"
            }
            return {"jsonrpc": "2.0", "id": req_id, "result": result}

        # 其他MCP方法走内部处理
        inner_result = handle_mcp_request({"method": method, "params": params})
        return {"jsonrpc": "2.0", "id": req_id, "result": inner_result}

    except ValueError as e:
        return {"jsonrpc": "2.0", "id": req_id, "error": {"code": -32601, "message": str(e)}}
    except Exception as e:
        return {"jsonrpc": "2.0", "id": req_id, "error": {"code": -32603, "message": str(e)}}


# 新增：MCP stdio 分帧读写工具函数
# 传输模式标记：默认使用分帧（Content-Length），首次读取后根据客户端模式自动切换
USE_FRAMED = True


def _read_message() -> Dict[str, Any]:
    """从stdin读取一条消息，兼容两种方式：
    1) LSP风格分帧（带Content-Length头，允许任意顺序的头部，如Content-Type等）
    2) 逐行JSON（每条消息一行，换行分隔）
    首次读取时会自动检测并设置 USE_FRAMED；返回解析后的JSON对象；在解析错误时返回{"__parse_error__": str(e)}。
    """
    global USE_FRAMED
    try:
        buf = sys.stdin.buffer
        first_line = buf.readline()
        if not first_line:
            return None  # EOF
        # 跳过纯空行
        while first_line in (b"\r\n", b"\n"):
            first_line = buf.readline()
            if not first_line:
                return None
        dec = first_line.decode('utf-8', errors='replace')
        # 如果看起来像 "Header: value" 则认为是分帧模式，继续读取直到空行
        if ":" in dec and dec.split(":", 1)[0].strip().replace('-', '').isalpha():
            USE_FRAMED = True
            headers = {}
            # 记录第一行头部
            hparts = dec.strip().split(":", 1)
            headers[hparts[0].strip().lower()] = hparts[1].strip()
            # 继续读取剩余头部直到空行
            while True:
                hline = buf.readline()
                if not hline:
                    return None
                if hline in (b"\r\n", b"\n"):
                    break
                hdec = hline.decode('utf-8', errors='replace')
                if ":" in hdec:
                    k, v = hdec.strip().split(":", 1)
                    headers[k.strip().lower()] = v.strip()
            content_length = headers.get('content-length')
            if content_length is None:
                return {"__parse_error__": "Missing Content-Length"}
            length = int(content_length)
            body = buf.read(length)
            if not body:
                return {"__parse_error__": "Empty body"}
            return json.loads(body.decode('utf-8'))
        else:
            USE_FRAMED = False
            try:
                return json.loads(dec)
            except Exception:
                return {"__parse_error__": f"Invalid JSON line: {dec.strip()}"}
    except Exception as e:
        return {"__parse_error__": str(e)}


def _write_message(obj: Dict[str, Any]) -> None:
    """向stdout写出一条消息，遵循当前检测到的传输模式：
    - USE_FRAMED=True: 输出Content-Length分帧头 + JSON体
    - USE_FRAMED=False: 输出逐行JSON（换行分隔）
    所有非协议日志继续写入stderr。
    """
    try:
        payload_str = json.dumps(obj, ensure_ascii=False)
        if USE_FRAMED:
            payload = payload_str.encode('utf-8')
            headers = (
                f"Content-Length: {len(payload)}\r\n" +
                "Content-Type: application/json; charset=utf-8\r\n" +
                "\r\n"
            ).encode('utf-8')
            sys.stdout.buffer.write(headers)
            sys.stdout.buffer.write(payload)
            sys.stdout.buffer.flush()
        else:
            sys.stdout.buffer.write((payload_str + "\n").encode('utf-8'))
            sys.stdout.buffer.flush()
    except Exception as e:
        print(f"[ERROR] 写出JSON-RPC响应失败: {e}", file=sys.stderr)


def main():
    """主函数 - MCP服务器模式
    - 仅向 stdout 写入合法 JSON-RPC 2.0 消息（逐行JSON）
    - 将所有内部日志与错误输出到 stderr，避免污染协议流
    - 移除启动时的RAG重载，避免卡在Trae加载阶段
    """
    global G_SERVER
    print("[START] DNF知识库RAG MCP服务器启动", file=sys.stderr)
    try:
        # 轻量化：启动时仅构造对象，不进行索引加载
        G_SERVER = DNFRAGMCPServer()
        print("[OK] MCP服务器基础初始化完成（RAG延迟加载）", file=sys.stderr)
        
        while True:
            request = _read_message()
            if request is None:
                break  # EOF
            # 调试：记录收到的请求方法与ID到stderr，帮助定位客户端是否发来initialize
            if isinstance(request, dict):
                print(f"[RECV] method={request.get('method')} id={request.get('id')}", file=sys.stderr)
            if isinstance(request, dict) and request.get("__parse_error__"):
                # 返回 JSON-RPC 解析错误，id 置为 None
                error_resp = {"jsonrpc": "2.0", "id": None, "error": {"code": -32700, "message": "Parse error: invalid JSON"}}
                _write_message(error_resp)
                print(f"[SENT] id=None error=-32700", file=sys.stderr)
                continue
            try:
                response = handle_jsonrpc_request(request)
                if response is None:
                    continue
                _write_message(response)
                # 响应侧日志：便于观察是否及时写回
                rid = response.get("id")
                rtype = "error" if "error" in response else "result"
                print(f"[SENT] id={rid} type={rtype}", file=sys.stderr)
            except Exception as e:
                print(f"[ERROR] 处理请求异常: {e}", file=sys.stderr)
                error_resp = {"jsonrpc": "2.0", "id": request.get("id"), "error": {"code": -32603, "message": str(e)}}
                _write_message(error_resp)
                print(f"[SENT] id={request.get('id')} error=-32603", file=sys.stderr)
    except Exception as e:
        print(f"[ERROR] MCP服务器启动失败: {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()