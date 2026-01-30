#!/bin/bash
# alskai-deai-writer GitHub一键发布脚本
# 版本: v1.0.0

set -e

echo "🚀 alskai-deai-writer GitHub发布助手"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 1. 获取GitHub用户名
read -p "请输入你的GitHub用户名: " GITHUB_USERNAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo "❌ 错误: 用户名不能为空"
    exit 1
fi

echo ""
echo "📋 准备发布..."
echo "仓库名: alskai-deai-writer"
echo "用户名: $GITHUB_USERNAME"
echo ""

# 2. 创建项目目录结构
echo "📁 创建项目目录结构..."
mkdir -p alskai-deai-writer/releases
mkdir -p alskai-deai-writer/scripts

# 3. 复制文件
echo "📦 复制项目文件..."
cp README.md alskai-deai-writer/
cp CHANGELOG.md alskai-deai-writer/
cp LICENSE alskai-deai-writer/
cp INSTALLATION-v1.0.0.md alskai-deai-writer/INSTALLATION.md
cp alskai-deai-writer-v1.0.0.skill alskai-deai-writer/releases/
cp alskai-deai-writer.skill alskai-deai-writer/releases/alskai-deai-writer-v0.0.1.skill 2>/dev/null || true
cp install-to-claude-code.sh alskai-deai-writer/scripts/
cp install-to-claude-code.bat alskai-deai-writer/scripts/

# 4. 进入项目目录
cd alskai-deai-writer

# 5. 初始化Git仓库
echo "🔧 初始化Git仓库..."
git init
git branch -M main

# 6. 添加所有文件
echo "➕ 添加文件到Git..."
git add .

# 7. 提交
echo "💾 创建初始提交..."
git commit -m "🎉 Initial release v1.0.0

- ✅ 4种风格系统(专业商务/技术科普/亲和对话/学术研究)
- ✅ Phase 0事实核查(自动触发)
- ✅ 8维度AI味诊断
- ✅ 完整文档和示例
"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 本地准备完成!"
echo ""
echo "📝 接下来需要你手动执行以下步骤:"
echo ""
echo "1️⃣ 在GitHub创建新仓库:"
echo "   • 访问: https://github.com/new"
echo "   • 仓库名: alskai-deai-writer"
echo "   • 设置为: Public"
echo "   • 不要勾选: Initialize with README"
echo "   • 点击: Create repository"
echo ""
echo "2️⃣ 创建完成后,执行以下命令推送代码:"
echo ""
echo "   cd $(pwd)"
echo "   git remote add origin https://github.com/$GITHUB_USERNAME/alskai-deai-writer.git"
echo "   git push -u origin main"
echo ""
echo "3️⃣ 创建Release:"
echo "   • 访问: https://github.com/$GITHUB_USERNAME/alskai-deai-writer/releases/new"
echo "   • Tag: v1.0.0"
echo "   • Title: v1.0.0 - 4种风格系统"
echo "   • 上传: releases/alskai-deai-writer-v1.0.0.skill"
echo "   • 点击: Publish release"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "💡 提示: 上面的命令已经复制就绪,执行第2步即可推送!"
echo ""
