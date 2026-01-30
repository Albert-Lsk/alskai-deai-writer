# GitHub发布指南 - 手动版

如果你想**完全掌控每一步**,按照这个指南手动发布。

---

## 📋 准备工作

### 1. 确认你有GitHub账号
访问: https://github.com

### 2. 确认你本地安装了Git
```bash
git --version
```

如果没有,访问: https://git-scm.com/downloads

---

## 🚀 发布步骤

### Step 1: 在GitHub创建仓库

1. 访问: https://github.com/new
2. 填写信息:
   - **Repository name**: `alskai-deai-writer`
   - **Description**: "去除AI生成文本的AI味,支持4种风格(专业商务/技术科普/亲和对话/学术研究)"
   - **Visibility**: Public (公开)
   - **不要勾选**: "Initialize this repository with a README"
3. 点击 "Create repository"

---

### Step 2: 整理项目文件

在你的电脑上创建项目结构:

```
alskai-deai-writer/
├── README.md
├── CHANGELOG.md
├── INSTALLATION.md
├── LICENSE
├── .gitignore
├── releases/
│   ├── alskai-deai-writer-v1.0.0.skill
│   └── alskai-deai-writer-v0.0.1.skill
└── scripts/
    ├── install-to-claude-code.sh
    └── install-to-claude-code.bat
```

**文件清单** (我已经为你准备好了):
- ✅ README.md
- ✅ CHANGELOG.md
- ✅ INSTALLATION-v1.0.0.md (重命名为 INSTALLATION.md)
- ✅ LICENSE
- ✅ .gitignore
- ✅ alskai-deai-writer-v1.0.0.skill
- ✅ install-to-claude-code.sh
- ✅ install-to-claude-code.bat

---

### Step 3: 初始化Git仓库

打开终端,进入项目目录:

```bash
cd alskai-deai-writer
git init
git branch -M main
```

---

### Step 4: 添加文件并提交

```bash
# 添加所有文件
git add .

# 查看将要提交的文件
git status

# 创建初始提交
git commit -m "🎉 Initial release v1.0.0

- ✅ 4种风格系统(专业商务/技术科普/亲和对话/学术研究)
- ✅ Phase 0事实核查(自动触发)
- ✅ 8维度AI味诊断
- ✅ 完整文档和示例
"
```

---

### Step 5: 关联远程仓库并推送

**替换 `YOUR_USERNAME` 为你的GitHub用户名**:

```bash
git remote add origin https://github.com/YOUR_USERNAME/alskai-deai-writer.git
git push -u origin main
```

如果要求输入用户名和密码:
- 用户名: 你的GitHub用户名
- 密码: **使用Personal Access Token** (不是GitHub密码)

**如何获取Personal Access Token**:
1. 访问: https://github.com/settings/tokens
2. 点击 "Generate new token (classic)"
3. 勾选 "repo" 权限
4. 生成并复制token
5. 在终端输入token作为密码

---

### Step 6: 创建Release

1. 访问你的仓库: `https://github.com/YOUR_USERNAME/alskai-deai-writer`
2. 点击 "Releases" > "Create a new release"
3. 填写信息:
   - **Tag**: `v1.0.0` (点击 "Create new tag")
   - **Release title**: `v1.0.0 - 4种风格系统`
   - **Description**: 从CHANGELOG.md复制v1.0.0部分
4. 上传文件:
   - 拖拽 `releases/alskai-deai-writer-v1.0.0.skill` 到文件区
5. 点击 "Publish release"

---

### Step 7: 验证发布

1. 访问你的仓库首页
2. 确认README.md正确显示
3. 点击Releases查看v1.0.0
4. 测试下载.skill文件

---

## 🎯 发布后的推广

### 在社交媒体分享

**推荐文案**:
```
🎉 开源了一个去AI味的Skill!

alskai-deai-writer - 让AI生成的文本重新获得人的温度

✨ 4种风格可选(商务/技术/对话/学术)
🔍 自动事实核查
📊 8维度AI味诊断

GitHub: https://github.com/YOUR_USERNAME/alskai-deai-writer
欢迎star ⭐️

#AI #Claude #OpenSource #中文开源
```

### 提交到Skill社区

1. **Skills Marketplace**: https://skillsmp.com/
2. **Claude社区**: 在Discord/Reddit分享
3. **中文社区**: V2EX、知乎、公众号

---

## ❓ 常见问题

### Q: 推送时提示authentication failed?

**A**: 你需要使用Personal Access Token,不是GitHub密码。
访问 https://github.com/settings/tokens 创建一个。

### Q: 如何更新GitHub上的代码?

**A**: 
```bash
git add .
git commit -m "更新说明"
git push
```

### Q: 如何发布新版本?

**A**: 
1. 更新CHANGELOG.md
2. 打包新的.skill文件
3. 提交代码: `git commit -m "v1.1.0"`
4. 打标签: `git tag v1.1.0`
5. 推送: `git push && git push --tags`
6. 在GitHub创建新的Release

---

## 💡 下一步

发布成功后,你可以:
1. 写一篇使用教程发到公众号
2. 录一个演示视频
3. 收集用户反馈
4. 规划v1.1.0功能

---

**祝你发布顺利! 🌿**

有问题随时问我!
