为了方便安装VPS结束后，一键安装升级及相关的插件，整合了部分的命令
#!/bin/bash
set -e

MODE="${1:-local}"  # 默认本地模式

if [ "$MODE" = "remote" ]; then
    echo "使用远程模式..."
    bash <(curl -sL https://raw.githubusercontent.com/yeahwu/v2ray-wss/main/tcp-window.sh)
    bash <(curl -sL https://raw.githubusercontent.com/yahuisme/network-optimization/main/script.sh)
else
    echo "使用本地模式..."
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    bash "$SCRIPT_DIR/tcp-window.sh"
    bash "$SCRIPT_DIR/network-optimization.sh"
fi

echo "✅ 完成！"
