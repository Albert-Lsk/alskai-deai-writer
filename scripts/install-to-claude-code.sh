#!/bin/bash
# alskai-deai-writer Claude Code安装脚本
# 版本: v0.0.1

set -e

echo "🚀 开始安装 alskai-deai-writer skill 到 Claude Code..."

# 检测操作系统
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    CLAUDE_SKILLS_DIR="$USERPROFILE/.claude/skills"
else
    CLAUDE_SKILLS_DIR="$HOME/.claude/skills"
fi

# 创建skill目录
echo "📁 创建Claude skill目录: $CLAUDE_SKILLS_DIR"
mkdir -p "$CLAUDE_SKILLS_DIR"

# 解压skill文件
SKILL_FILE="alskai-deai-writer.skill"
if [ ! -f "$SKILL_FILE" ]; then
    echo "❌ 错误: 找不到 $SKILL_FILE 文件"
    echo "请确保 $SKILL_FILE 在当前目录下"
    exit 1
fi

echo "📦 解压 skill 文件..."
unzip -q "$SKILL_FILE" -d "$CLAUDE_SKILLS_DIR/"

echo "✅ 安装完成!"
echo ""
echo "📝 下一步:"
echo "1. 在Claude Code中执行: /reload-skills"
echo "2. 验证安装: /skills"
echo "3. 开始使用: 直接说'帮我改写这段AI生成的文章,去掉AI味'"
echo ""
echo "💡 提示: 如果skill没有自动触发,可以手动调用: /alskai-deai-writer"
