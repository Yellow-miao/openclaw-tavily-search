# 🎯 OpenClaw Tavily 搜索集成

> OpenClaw 原生不支持 Tavily？不存在的！曲线救国安排上！

## 🆓 免费使用

Tavily 提供 **免费 API 额度**：
- 注册就送 **1000 次/月** 免费搜索
- 无需绑定信用卡

## 🔧 曲线救国

OpenClaw 原生支持 Brave、Perplexity、Grok、Gemini、Kimi，但 **不支持 Tavily**。

本方案通过 **Shell 脚本 + Skill** 封装实现：

```
┌─────────────┐     shell 脚本      ┌────────────┐
│  OpenClaw  │ ──────────────────► │  Tavily   │
│  exec 工具  │    调用 API          │   API     │
└─────────────┘                      └────────────┘
```

## 📦 包含文件

```
tavily-search/
├── README.md           # 本文件
├── SKILL.md           # 详细配置说明
└── scripts/
    └── tavily_search.sh   # 搜索脚本
```

## 🚀 快速开始

### 1. 获取 Tavily API Key

1. 访问 [app.tavily.com](https://app.tavily.com) 注册账号
2. 在后台获取 API Key

### 2. 配置脚本

编辑 `scripts/tavily_search.sh`，替换 API Key：

```bash
API_KEY="你的-tavily-api-key"
```

### 3. 添加执行权限

```bash
chmod +x scripts/tavily_search.sh
```

### 4. 测试

```bash
./scripts/tavily_search.sh "OpenClaw 技巧" 3
```

## 💡 使用场景

- AI 助手需要实时网络搜索能力
- 免费额度足够个人使用
- 不想绑定信用卡

## 📊 对比其他方案

| 方案 | 免费额度 | 需要信用卡 | 原生支持 |
|------|---------|----------|---------|
| **Tavily** | 1000次/月 | ❌ | ❌ |


有更好的方案？欢迎提交 PR！

---

**License**: MIT  
**Author**: Yellow  
**Created**: 2026-03-23
