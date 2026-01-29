#!/bin/bash
# install.sh - 一键执行所有优化脚本

set -e

echo "🚀 开始执行网络优化..."

# 方案A：远程直接执行
echo "▶️ 步骤1: TCP优化..."
bash <(curl -fsSL https://raw.githubusercontent.com/yeahwu/v2ray-wss/main/tcp-window.sh)

echo "▶️ 步骤2: 网络优化..."
bash <(curl -fsSL https://raw.githubusercontent.com/yahuisme/network-optimization/main/script.sh)

echo "▶️ 步骤3: 系统升级..."
bash <(curl -fsSL https://raw.githubusercontent.com/topgoodness/optimization/blob/main/update.sh)

echo "▶️ 步骤4: 个性化优化..."
bash <(curl -fsSL https://raw.githubusercontent.com/topgoodness/optimization/main/script.sh)

echo "✅ 所有优化完成！"
