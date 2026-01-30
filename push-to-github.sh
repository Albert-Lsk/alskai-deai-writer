#!/bin/bash
# alskai-deai-writer GitHub推送脚本
# 使用前请先在GitHub创建仓库: https://github.com/new

set -e

echo "🚀 alskai-deai-writer GitHub推送脚本"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 检查当前目录
if [ ! -f "README.md" ]; then
    echo "❌ 错误: 请在包含所有文件的目录中运行此脚本"
    echo "   当前目录应该包含: README.md, CHANGELOG.md等文件"
    exit 1
fi

# 获取GitHub用户名
read -p "📝 请输入你的GitHub用户名: " GITHUB_USERNAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo "❌ 用户名不能为空"
    exit 1
fi

echo ""
echo "⚠️  重要提醒:"
echo "   1. 请确保你已在GitHub创建了仓库: alskai-deai-writer"
echo "   2. 仓库地址应该是: https://github.com/${GITHUB_USERNAME}/alskai-deai-writer"
echo "   3. 仓库应该是空的(不要勾选README/LICENSE)"
echo ""
read -p "按回车继续,或Ctrl+C取消..."

echo ""
echo "📦 初始化Git仓库..."

# 初始化Git仓库(如果还没有)
if [ ! -d ".git" ]; then
    git init
    echo "✅ Git仓库初始化完成"
else
    echo "ℹ️  Git仓库已存在"
fi

# 设置分支名为main
git branch -M main

# 添加所有文件
echo ""
echo "📝 添加文件到Git..."
git add .

# 检查是否有文件被添加
if git diff --cached --quiet; then
    echo "⚠️  没有新文件需要提交"
else
    echo "✅ 文件已添加"
fi

# 提交
echo ""
echo "💾 提交更改..."
git commit -m "🎉 Initial commit: alskai-deai-writer v1.0.0

Features:
- 4种风格系统(专业商务/技术科普/亲和对话/学术研究)
- Phase 0自动事实核查
- 8维度AI味诊断
- 智能风格选择流程

Author: ALSKai
" || echo "ℹ️  没有新的提交"

# 添加远程仓库
echo ""
echo "🔗 添加远程仓库..."
REPO_URL="https://github.com/${GITHUB_USERNAME}/alskai-deai-writer.git"

# 删除旧的origin(如果存在)
git remote remove origin 2>/dev/null || true

git remote add origin "$REPO_URL"
echo "✅ 远程仓库已添加: $REPO_URL"

# 推送到GitHub
echo ""
echo "🚀 推送到GitHub..."
echo "   (如果要求输入密码,请使用Personal Access Token)"
echo ""

git push -u origin main

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 推送完成!"
echo ""
echo "📍 你的仓库地址:"
echo "   https://github.com/${GITHUB_USERNAME}/alskai-deai-writer"
echo ""
echo "🎯 下一步:"
echo "   1. 访问你的GitHub仓库"
echo "   2. 创建Release (tag: v1.0.0)"
echo "   3. 上传 alskai-deai-writer-v1.0.0.skill 文件"
echo "   4. 分享给更多人!"
echo ""
echo "🌿 感谢使用 alskai-deai-writer"
