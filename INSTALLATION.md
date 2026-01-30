# alskai-deai-writer v1.0.0 安装指南

## 📦 这个包包含什么

- `alskai-deai-writer-v1.0.0.skill` - Skill安装包
- `install-to-claude-code.sh` - Linux/Mac一键安装脚本
- `install-to-claude-code.bat` - Windows一键安装脚本
- `INSTALLATION.md` - 本文档
- `CHANGELOG.md` - 版本变更日志
- `README.md` - GitHub说明文档

---

## 🎯 v1.0.0 新特性

**重大更新**:
- ✅ **4种风格可选**: 专业商务、技术科普、亲和对话、学术研究
- ✅ **风格选择机制**: Phase 2之后可选择改写风格
- ✅ **默认风格**: 未指定时使用亲和对话风
- ✅ **通用化**: 适用于更广泛的场景

**保留核心**:
- ✅ Phase 0事实核查(自动触发)
- ✅ 8维度AI味诊断
- ✅ 严格的写作原则(短句、限制列表)

详见 [CHANGELOG.md](CHANGELOG.md)

---

## 🚀 快速安装 (推荐)

### Linux / macOS

1. 打开终端,进入下载目录:
   ```bash
   cd ~/Downloads
   ```

2. 赋予脚本执行权限:
   ```bash
   chmod +x install-to-claude-code.sh
   ```

3. 运行安装脚本:
   ```bash
   ./install-to-claude-code.sh
   ```

4. 在Claude Code中重新加载:
   ```
   /reload-skills
   ```

### Windows

1. 双击运行 `install-to-claude-code.bat`

2. 等待安装完成

3. 在Claude Code中重新加载:
   ```
   /reload-skills
   ```

---

## 🔧 手动安装

如果自动安装脚本不工作,可以手动安装:

### 1. 找到Claude skill目录

**Linux/macOS**:
```bash
~/.claude/skills/
```

**Windows**:
```
C:\Users\你的用户名\.claude\skills\
```

### 2. 解压skill文件

**Linux/macOS**:
```bash
cd ~/.claude/skills
unzip ~/Downloads/alskai-deai-writer-v1.0.0.skill
```

**Windows**:
- 右键点击 `alskai-deai-writer-v1.0.0.skill`
- 选择"解压到当前文件夹"
- 将解压后的文件夹移动到 `C:\Users\你的用户名\.claude\skills\`

### 3. 重新加载

在Claude Code中执行:
```
/reload-skills
```

### 4. 验证安装

在Claude Code中执行:
```
/skills
```

应该能看到 `alskai-deai-writer` 在列表中。

---

## 🔄 从v0.0.1升级

如果你已经安装了v0.0.1:

### 方式1: 覆盖安装(推荐)

```bash
# 直接运行安装脚本,会自动覆盖旧版本
./install-to-claude-code.sh

# 重新加载
/reload-skills
```

### 方式2: 手动升级

```bash
# 1. 备份旧版本(可选)
mv ~/.claude/skills/alskai-deai-writer ~/.claude/skills/alskai-deai-writer-v0.0.1

# 2. 解压新版本
cd ~/.claude/skills
unzip ~/Downloads/alskai-deai-writer-v1.0.0.skill

# 3. 重新加载
/reload-skills
```

---

## 💡 如何使用

### 自动触发 (推荐)

只要你的请求包含这些关键词,skill会自动加载:
- "去除AI味"
- "改写"
- "消除AI生成痕迹"
- "让文章更自然"

**示例对话**:
```
你: 帮我改写这段产品介绍,去掉AI味

在当今快速发展的数字化时代,我们的产品具备强大的功能...
```

### 手动调用

如果自动触发不工作,可以手动调用:
```
/alskai-deai-writer
```

---

## 🎨 v1.0.0使用流程

### 完整流程

```
你: 帮我改写这段文章,去掉AI味
    [粘贴AI生成的文本]

Claude: 
    [Phase 0] 事实核查(如果涉及产品/工具)
    [Phase 1] AI味浓度: 85/100 + 清爽版
    [Phase 2] 锐度诊断 + 4种风格选项:
             1️⃣ 专业商务风
             2️⃣ 技术科普风
             3️⃣ 亲和对话风
             4️⃣ 学术研究风

你: "用专业商务风" 或 "技术科普风" 或 "对话风"

Claude: 
    [Phase 3] 使用选定风格重构 + 改动说明
```

### 快速使用

你也可以在一开始就指定风格:

```
你: 用专业商务风改写这段产品介绍

Claude: [直接执行完整流程,使用专业商务风]
```

### 使用默认风格

如果你不指定风格:

```
你: 全部重构

Claude: [使用默认的"亲和对话风"重构]
```

---

## 🎯 3种风格详解

### 1️⃣ 专业商务风

**适用场景**: 产品介绍、商业报告、企业沟通

**特点**:
- 用数据说话,不用空洞形容词
- 客观有力,专业可信
- 商业领域类比

**示例**:
```
AI味版本: "显著提升了团队协作效率"
专业风格: "三个部门的跨部门沟通次数减少了60%"
```

### 2️⃣ 技术科普风

**适用场景**: 技术文档、开发教程、技术博客

**特点**:
- 深入浅出,准确清晰
- 技术准确但易懂
- 系统架构类比

**示例**:
```
AI味版本: "采用先进的分布式缓存技术"
技术风格: "把热数据放在内存里,查询速度从200ms降到20ms"
```

### 3️⃣ 亲和对话风 (默认)

**适用场景**: 个人博客、公众号、社交媒体

**特点**:
- 轻松自然,有温度
- 像朋友聊天
- 生活化比喻

**示例**:
```
AI味版本: "该工具可以帮助用户更好地管理时间"
对话风格: "早上9点打开电脑,晚上7点关机,中间那10个小时去哪了?"
```

### 4️⃣ 学术研究风

**适用场景**: 学术论文、研究报告、文献综述

**特点**:
- 严谨客观,逻辑清晰
- 注重论证和数据支撑
- 理论模型类比

**示例**:
```
AI味版本: "这个方法效果很好,大家都在用"
学术风格: "实证研究表明,该方法在三项独立研究中均显示出显著效果(p<0.05)"
```

---

## ❓ 常见问题

### Q1: v1.0.0和v0.0.1有什么区别?

**A**: 主要区别:
- v0.0.1: 单一风格(ALSKai个人风格)
- v1.0.0: 3种风格可选,更通用

详见 [CHANGELOG.md](CHANGELOG.md)

### Q2: 为什么skill没有自动触发?

**A**: 可能的原因:
1. 没有在请求中包含触发关键词
   - 解决: 明确说"去除AI味"或"改写"
2. skill没有正确安装
   - 解决: 执行 `/skills` 检查
3. 需要重新加载
   - 解决: 执行 `/reload-skills`

### Q3: 如果不选择风格会怎样?

**A**: 使用默认的"亲和对话风"改写

### Q4: 可以切换风格重新改写吗?

**A**: 可以! 如果对结果不满意,可以说:
```
"用技术科普风重新改写"
"换成专业商务风试试"
```

### Q5: 在哪里可以看到安装的skills?

**A**: 在Claude Code中执行 `/skills` 命令

### Q6: 如何卸载这个skill?

**A**: 删除skill文件夹:
```bash
# Linux/macOS
rm -rf ~/.claude/skills/alskai-deai-writer-v1.0.0

# Windows
rmdir /s "C:\Users\你的用户名\.claude\skills\alskai-deai-writer-v1.0.0"
```

然后执行 `/reload-skills`

### Q7: 这个skill会消耗很多tokens吗?

**A**: 不会。采用渐进式加载:
- Metadata(~100字)始终在上下文
- 完整内容只在触发时加载
- Phase 0只在涉及产品介绍时触发

### Q8: 可以在Claude.ai中使用吗?

**A**: 可以! 在Settings > Capabilities > Skills上传.skill文件

### Q9: 可以修改skill的行为吗?

**A**: 可以! 编辑SKILL.md文件:
```bash
# Linux/macOS
nano ~/.claude/skills/alskai-deai-writer-v1.0.0/SKILL.md

# 修改后重新加载
/reload-skills
```

### Q10: 支持自定义风格吗?

**A**: v1.0.0暂不支持,计划在v1.1.0加入。
你可以编辑SKILL.md手动添加第4种风格。

---

## 🔍 Troubleshooting

### 问题1: 安装后看不到skill

**检查步骤**:
```bash
# 1. 检查目录结构
ls -la ~/.claude/skills/alskai-deai-writer-v1.0.0/

# 2. 确保SKILL.md存在
cat ~/.claude/skills/alskai-deai-writer-v1.0.0/SKILL.md | head -10

# 3. 重新加载
/reload-skills

# 4. 验证
/skills
```

### 问题2: skill触发了但没有展示风格选项

**可能原因**:
- Phase 2时你直接说了"全部重构"
- 此时会使用默认的"亲和对话风"

**解决**: 明确说"展示风格选项"或"让我选择风格"

### 问题3: Windows找不到 .claude 目录

**解决**:
```bash
# Windows的个人目录在
C:\Users\你的用户名\.claude\skills\

# 如果不存在,手动创建
mkdir C:\Users\你的用户名\.claude\skills
```

### 问题4: 解压.skill文件时报错

**解决**:
```bash
# .skill文件本质是ZIP文件
# Linux/macOS
unzip alskai-deai-writer-v1.0.0.skill

# Windows: 重命名为.zip再解压
ren alskai-deai-writer-v1.0.0.skill alskai-deai-writer-v1.0.0.zip
```

---

## 📚 更多资源

- [CHANGELOG.md](CHANGELOG.md) - 版本变更历史
- [README.md](README.md) - GitHub项目说明
- [Claude Code文档](https://docs.anthropic.com/en/docs/claude-code/overview)
- [Skill创建指南](https://code.claude.com/docs/en/skills)

---

## 💬 获得帮助

如果遇到问题:
1. 查看本文档的"常见问题"部分
2. 查看 [CHANGELOG.md](CHANGELOG.md) 确认版本信息
3. 在GitHub提交Issue

---

## 🙏 致谢

感谢使用alskai-deai-writer!

如果这个skill帮到了你,欢迎:
- 在GitHub给个star ⭐️
- 分享给更多朋友
- 提供反馈和建议

**作者**: ALSKai  
**理念**: 让AI生成的内容重新获得人的温度 🌿

---

**祝你使用愉快!**
