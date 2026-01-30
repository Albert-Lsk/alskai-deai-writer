# 🎯 超简单!3步发布到GitHub

**只需要3步,5分钟搞定!**

---

## 📋 准备工作

### 1. 下载所有文件

把这些文件都下载到**同一个文件夹**:

**核心文件**:
- ✅ README.md
- ✅ CHANGELOG.md  
- ✅ INSTALLATION-v1.0.0.md (上传时改名为 INSTALLATION.md)
- ✅ LICENSE
- ✅ gitignore.txt (上传时改名为 .gitignore)

**Skill包**:
- ✅ alskai-deai-writer-v1.0.0.skill
- ✅ alskai-deai-writer.skill (这是v0.0.1,上传时放到releases文件夹)

**安装脚本**:
- ✅ install-to-claude-code.sh
- ✅ install-to-claude-code.bat

**推送脚本**:
- ✅ push-to-github.sh ⬅️ **重要!**

---

## 🚀 开始发布

### Step 1: 在GitHub创建空仓库 (2分钟)

1. 访问: https://github.com/new
2. 填写信息:
   ```
   Repository name: alskai-deai-writer
   Description: 去除AI生成文本的AI味,支持4种风格(专业商务/技术科普/亲和对话/学术研究)
   Public: ✅ (选中)
   ```
3. **⚠️ 重要: 不要勾选任何初始化选项!**
   - ❌ Initialize this repository with a README
   - ❌ Add .gitignore
   - ❌ Choose a license
4. 点击 "Create repository"
5. **不要关闭这个页面** - 一会儿要回来创建Release

---

### Step 2: 运行推送脚本 (1分钟)

**macOS/Linux**:

```bash
# 1. 打开终端,进入你下载文件的文件夹
cd ~/Downloads  # 改成你的实际路径

# 2. 运行推送脚本
chmod +x push-to-github.sh
./push-to-github.sh
```

**Windows**:

```bash
# 1. 打开Git Bash (如果没有,从 https://git-scm.com/ 下载Git)
cd ~/Downloads  # 改成你的实际路径

# 2. 运行推送脚本
bash push-to-github.sh
```

**脚本会询问你**:
- 你的GitHub用户名 → 输入并回车
- 确认仓库已创建 → 回车继续

如果要求输入密码:
- **不要输入GitHub密码!**
- 使用 **Personal Access Token** (见下面说明)

---

### Step 3: 创建Release (2分钟)

推送成功后:

1. 返回GitHub,访问: `https://github.com/你的用户名/alskai-deai-writer`
2. 点击右侧的 "Releases" > "Create a new release"
3. 填写:
   ```
   Tag: v1.0.0 (点击"Create new tag")
   Release title: v1.0.0 - 4种风格系统
   Description: 复制粘贴下面的内容 ⬇️
   ```

**Release描述** (复制这个):
```markdown
## 🎉 首次发布

### ✨ 核心功能

- **4种风格系统**: 专业商务、技术科普、亲和对话、学术研究
- **自动事实核查**: Phase 0自动验证产品信息
- **AI味诊断**: 8维度全面扫描
- **智能改写**: 保留核心信息,注入人性化风格

### 📦 安装

下载 `alskai-deai-writer-v1.0.0.skill` 文件:
- Claude Code: 解压到 `~/.claude/skills/` 
- Claude.ai: 上传到 Settings > Skills

详见 [INSTALLATION.md](https://github.com/你的用户名/alskai-deai-writer/blob/main/INSTALLATION.md)

### 📚 文档

- [README](https://github.com/你的用户名/alskai-deai-writer#readme)
- [CHANGELOG](https://github.com/你的用户名/alskai-deai-writer/blob/main/CHANGELOG.md)
- [使用指南](https://github.com/你的用户名/alskai-deai-writer/blob/main/INSTALLATION.md)

**作者**: ALSKai  
**理念**: 让AI生成的内容重新获得人的温度 🌿
```

4. **上传文件**: 拖拽 `alskai-deai-writer-v1.0.0.skill` 到"Attach binaries"区域
5. 点击 "Publish release"

---

## 🎊 完成!

你的开源项目已经发布了!

访问: `https://github.com/你的用户名/alskai-deai-writer`

---

## 🔑 Personal Access Token 获取方法

如果推送时要求密码,按以下步骤获取Token:

1. 访问: https://github.com/settings/tokens
2. 点击 "Generate new token" > "Generate new token (classic)"
3. 填写:
   ```
   Note: alskai-deai-writer push
   Expiration: 90 days
   Select scopes: ✅ repo (勾选全部repo权限)
   ```
4. 点击 "Generate token"
5. **立即复制token** (只显示一次!)
6. 在终端粘贴作为密码

---

## ❓ 常见问题

### Q: 脚本报错 "not found"?

**A**: 
- macOS/Linux: 运行 `chmod +x push-to-github.sh` 后再试
- Windows: 确保已安装Git Bash

### Q: 推送失败 "authentication failed"?

**A**: 你需要使用Personal Access Token,不是GitHub密码 (见上面说明)

### Q: 如何更新GitHub上的内容?

**A**:
```bash
git add .
git commit -m "更新说明"
git push
```

### Q: 文件夹结构应该怎样?

**A**: 不用担心!脚本会自动处理。你只需要把所有文件放在同一个文件夹就行。

---

## 💡 发布后做什么?

1. **测试**: 从GitHub下载你的.skill文件,安装测试
2. **推广**: 
   - 发朋友圈/微博/知乎
   - 发公众号文章
   - 提交到 https://skillsmp.com/
3. **完善**: 
   - 添加更多使用示例
   - 收集用户反馈
   - 规划v1.1.0

---

## 🌿 需要帮助?

运行脚本时遇到问题?随时问我!

**祝你发布顺利!** 🎉
