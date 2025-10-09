#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
MCP stdio 客户端测试：向 mcp_server.py 发送 initialize 与 tools/list 请求，校验分帧与 JSON-RPC 2.0 响应。
"""
import sys
import os
import json
import subprocess

ROOT = os.path.dirname(os.path.abspath(__file__))


def send_message(p: subprocess.Popen, obj: dict) -> None:
    """按 MCP 分帧写入一条消息到子进程stdin"""
    payload = json.dumps(obj, ensure_ascii=False).encode('utf-8')
    headers = (
        f"Content-Length: {len(payload)}\r\n" +
        "Content-Type: application/json; charset=utf-8\r\n" +
        "\r\n"
    ).encode('utf-8')
    p.stdin.write(headers)
    p.stdin.write(payload)
    p.stdin.flush()


def read_message(p: subprocess.Popen):
    """按 MCP 分帧从子进程stdout读取一条消息"""
    headers = {}
    # 读取头
    while True:
        line = p.stdout.readline()
        if not line:
            return None, b""  # EOF
        if line in (b"\r\n", b"\n"):
            break
        parts = line.decode('utf-8', errors='replace').strip().split(':', 1)
        if len(parts) == 2:
            headers[parts[0].strip().lower()] = parts[1].strip()
    cl = int(headers.get('content-length', '0'))
    body = p.stdout.read(cl) if cl > 0 else b''
    return headers, body


def main():
    # 启动 mcp_server.py
    p = subprocess.Popen(
        [sys.executable, 'mcp_server.py'],
        cwd=ROOT,
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )

    # 发送 initialize
    send_message(p, {"jsonrpc": "2.0", "id": 1, "method": "initialize", "params": {}})
    h1, b1 = read_message(p)
    print("INIT_HEADERS:", h1)
    print("INIT_BODY:", b1.decode('utf-8', errors='replace'))

    # 发送 tools/list
    send_message(p, {"jsonrpc": "2.0", "id": 2, "method": "tools/list", "params": {}})
    h2, b2 = read_message(p)
    print("LIST_HEADERS:", h2)
    print("LIST_BODY:", b2.decode('utf-8', errors='replace'))

    # 结束
    try:
        p.stdin.close()
    except Exception:
        pass
    p.terminate()
    try:
        p.wait(timeout=2)
    except Exception:
        pass

    # 打印stderr，方便诊断
    err = p.stderr.read().decode('utf-8', errors='replace')
    if err:
        print("SERVER_STDERR:\n" + err)


if __name__ == '__main__':
    main()