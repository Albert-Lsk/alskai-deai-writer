# alskai-deai-writer

[![Version](https://img.shields.io/badge/version-v1.0.0-blue.svg)](https://github.com/你的用户名/alskai-deai-writer/releases)
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
- 📄 **灵活处理**: 支持直接更新Notion页面或生成新文档
- 🚫 **严格原则**: 短句优先,限制列表滥用
- 🛡️ **质量保障**: 不编造事实,不为黑而黑

---

## 🚀 快速开始

### 在Claude Code中安装

```bash
# 1. 下载skill包
git clone https://github.com/你的用户名/alskai-deai-writer.git
cd alskai-deai-writer

# 2. 运行安装脚本
chmod +x install-to-claude-code.sh
./install-to-claude-code.sh

# 3. 在Claude Code中重新加载
/reload-skills
```

### 在Claude.ai中安装

1. 下载 `alskai-deai-writer-v1.0.0.skill` 文件
2. 在Claude.ai中: Settings > Capabilities > Skills
3. 点击"Upload skill"上传.skill文件
4. 完成!

---

## 💡 使用示例

### 示例1: 产品介绍改写

**输入**:
```
帮我改写这段产品介绍,去掉AI味:

在当今快速发展的数字化时代,我们的产品具备强大的功能和便捷的体验。
首先,它可以有效提升工作效率...
```

**输出**:
```
[Phase 0] 事实核查...
[Phase 1] AI味浓度: 85/100 + 清爽版
[Phase 2] 锐度诊断 + 3种风格选项

你: "用专业商务风"

[Phase 3] 专业商务风版本:
"这个工具将文件处理时间从45分钟缩短到8分钟,
节省82%的重复操作..."
```

### 示例2: 技术文档改写

**输入**:
```
这段技术说明太像AI写的,能帮我改改吗?

该系统采用先进的微服务架构,通过分布式部署实现高可用性...
```

**输出**:
```
[诊断并展示风格选项]

你: "技术科普风"

[重构版本]:
"系统拆成了十几个独立服务。一个服务挂了,其他的照样运行。
就像轮胎爆了一个,车还能开..."
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
  
Phase 4: 文档处理选择 (v1.0.2新增)
  ↓ 直接更新Notion页面 or 生成新文档
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

### v1.0.0 (2026-01-29)

**重大更新**:
- ✅ 新增3种风格系统
- ✅ 支持风格选择
- ✅ 通用化改造

详见 [CHANGELOG.md](CHANGELOG.md)

### v0.0.1 (2026-01-27)

- 首次发布
- 单一风格(ALSKai个人风格)

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

---

## 📝 反馈与支持

**遇到问题?**
- 查看 [INSTALLATION.md](INSTALLATION.md) 安装指南
- 查看 [CHANGELOG.md](CHANGELOG.md) 版本说明
- 提交 [Issue](https://github.com/你的用户名/alskai-deai-writer/issues)

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
