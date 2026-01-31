# alskai-deai-writer

[![Version](https://img.shields.io/badge/version-v1.0.3-blue.svg)](https://github.com/Albert-Lsk/alskai-deai-writer/releases)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Claude](https://img.shields.io/badge/Claude-Compatible-purple.svg)](https://claude.ai)

**去除AI生成文本的"AI味",注入自然人性化风格。**

让机器生成的文本重新获得人的温度和个性。

---

## ✨ 特性

- 🎯 **4种风格可选**: 专业商务、技术科普、亲和对话、学术研究
- 🔍 **自动事实核查**: Phase 0自动验证产品/工具信息
- 📊 **8维度诊断**: 全面扫描AI味,精准定位问题
- ✍️ **智能改写**: 保留核心信息,注入人性化风格
- 📄 **灵活处理**: 支持更新本地文件、Notion页面或生成新文档
- 🚫 **严格原则**: 短句优先,限制列表滥用
- 🛡️ **质量保障**: 不编造事实,不为黑而黑

---

## 🚀 快速开始

### 在Claude Code中安装

```bash
# 1. 下载skill包
git clone https://github.com/Albert-Lsk/alskai-deai-writer.git
cd alskai-deai-writer

# 2. 运行安装脚本
chmod +x scripts/install-to-claude-code.sh
./scripts/install-to-claude-code.sh

# 3. 在Claude Code中重新加载
/reload-skills
```

### 在Claude.ai中安装

1. 下载 `releases/alskai-deai-writer-v1.0.3.skill` 文件
2. 在Claude.ai中: Settings > Capabilities > Skills
3. 点击"Upload skill"上传.skill文件
4. 完成!

---

## 💡 使用示例

### 示例1: 更新本地文件 (CLI用户最常见)

**输入**:
```
帮我改写这个README,去掉AI味:
~/project/README.md
```

**输出**:
```
[Phase 0] 事实核查...
[Phase 1] AI味浓度: 85/100 + 清爽版
[Phase 2] 锐度诊断 + 4种风格选项

你: "用专业商务风"

[Phase 3] 专业商务风版本改写完成
[Phase 4] 检测到本地文件: ~/project/README.md
         
         1️⃣ 更新本地文件 (推荐)
         2️⃣ 生成新文档

你: "1"

✅ 本地文件已更新!
   路径: ~/project/README.md
```

### 示例2: 更新Notion页面

**输入**:
```
改写这个Notion页面:
https://notion.so/My-Product-Intro-abc123
```

**输出**:
```
[完成改写]

[Phase 4] 检测到Notion页面
         
         1️⃣ 更新Notion页面 (推荐)
         2️⃣ 生成新文档

你: "1"

✅ Notion页面已更新!
   链接: https://notion.so/My-Product-Intro-abc123
```

### 示例3: 只改写文本

**输入**:
```
改写这段产品介绍,去掉AI味:

[粘贴文本]
```

**输出**:
```
[完成改写]

📝 改写后的文档:
━━━━━━━━━━━━━━━━━━━━━━━━━━
[改写后的内容]
━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## 🎨 4种风格详解

### 1️⃣ 专业商务风

**适合**: 产品介绍、商业报告、企业对外沟通

**特点**:
- 用数据说话,不用空洞形容词
- 客观有力,专业可信
- 商业领域类比

**示例**:
```
❌ "显著提升了团队协作效率"
✅ "三个部门的跨部门沟通次数减少了60%"
```

### 2️⃣ 技术科普风

**适合**: 技术文档、开发教程、技术博客

**特点**:
- 深入浅出,准确清晰
- 技术准确但易懂
- 系统架构类比

**示例**:
```
❌ "采用先进的分布式缓存技术"
✅ "把热数据放在内存里,查询速度从200ms降到20ms"
```

### 3️⃣ 亲和对话风

**适合**: 个人博客、公众号、社交媒体

**特点**:
- 轻松自然,有温度
- 像朋友聊天
- 生活化比喻

**示例**:
```
❌ "该工具可以帮助用户更好地管理时间"
✅ "早上9点打开电脑,晚上7点关机,中间那10个小时去哪了?"
```

### 4️⃣ 学术研究风

**适合**: 学术论文、研究报告、文献综述

**特点**:
- 严谨客观,逻辑清晰
- 注重论证和数据支撑
- 理论模型类比

**示例**:
```
❌ "这个方法效果很好,大家都在用"
✅ "实证研究表明,该方法在三项独立研究中均显示出显著效果(p<0.05)"
```

---

## 📋 工作流程

```
Phase 0: 事实核查(自动触发)
  ↓ 搜索验证产品/工具信息
  
Phase 1: 诊断 + 去冗余
  ↓ 8维度扫描,输出清爽版
  
Phase 2: 锐度诊断 + 风格选择
  ↓ 识别模糊点,展示4种风格
  
Phase 3: 风格化重构
  ↓ 注入选定风格,输出最终版
  
Phase 4: 智能文档处理 (v1.0.3重新设计)
  ↓ 检测场景: 本地文件 / Notion页面 / 纯文本
  ↓ 更新本地文件 OR 更新Notion OR 生成新文档
```

---

## 🛡️ 质量原则

### Phase 0: 事实核查

- ✅ 自动搜索验证产品信息
- ✅ 不编造不存在的痛点
- ✅ 对比基于真实差异
- ❌ 不为了黑而黑

### 通用写作原则

- ✅ 短句为主,长句为辅
- ✅ 用自然段落,不用列表堆砌
- ✅ 用具体数字,不用模糊词
- ❌ 禁止"不是...而是..."
- ❌ 禁止"首先...其次..."
- ❌ 禁止列表滥用

---

## 📦 安装要求

- Claude Code (任意版本)
- 或 Claude.ai (Pro/Max/Team/Enterprise)
- 启用Code Execution功能

---

## 🔄 版本历史

### v1.0.3 (2026-01-31) - 最新版本

**重大改进**:
- ✅ Phase 4完全重新设计
- ✅ 优先支持本地文件更新 (CLI用户核心需求)
- ✅ 智能场景检测 (文件路径/Notion链接/纯文本)
- ✅ 平台差异处理 (Claude Code vs Claude.ai)

### v1.0.2 (2026-01-30)

**新增功能**:
- ✅ Phase 4: 文档处理选择
- ✅ 支持直接更新Notion页面

### v1.0.0 (2026-01-29)

**重大更新**:
- ✅ 新增4种风格系统
- ✅ 支持风格选择
- ✅ 通用化改造

详见 [CHANGELOG.md](CHANGELOG.md)

---

## 🤝 贡献

欢迎贡献!

**贡献方式**:
1. Fork这个仓库
2. 创建你的特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交你的改动 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启一个Pull Request

**贡献建议**:
- 新增风格类型
- 优化现有风格特征
- 改进事实核查逻辑
- 添加更多使用示例
- 修复bug
- 支持更多文档平台(飞书、语雀等)

---

## 📝 反馈与支持

**遇到问题?**
- 查看 [INSTALLATION.md](INSTALLATION.md) 安装指南
- 查看 [CHANGELOG.md](CHANGELOG.md) 版本说明
- 查看 [UPGRADE_v1.0.3.md](UPGRADE_v1.0.3.md) 升级指南
- 提交 [Issue](https://github.com/Albert-Lsk/alskai-deai-writer/issues)

**有建议?**
- 欢迎提Issue讨论
- 欢迎提Pull Request

---

## 📄 许可证

MIT License

Copyright (c) 2026 ALSKai

详见 [LICENSE](LICENSE) 文件

---

## 🙏 致谢

感谢所有使用和贡献这个skill的朋友们!

**理念**: 让AI生成的内容重新获得人的温度。

如果这个skill帮到了你,欢迎给个star ⭐️

---

## 🔗 相关链接

- [Claude Code文档](https://docs.anthropic.com/en/docs/claude-code/overview)
- [Skill创建指南](https://code.claude.com/docs/en/skills)
- [Anthropic Skills仓库](https://github.com/anthropics/skills)

---

**作者**: ALSKai  
**理念**: 放牧AI,收获自由 🌿

---

<p align="center">
  Made with ❤️ by ALSKai
</p>
