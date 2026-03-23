# Tavily Search Skill

让 AI 助手使用 Tavily 进行网络搜索。

## 文件结构

```
tavily-search/
├── SKILL.md          # 本文件 - Skill 说明
└── scripts/
    └── tavily_search.sh   # 搜索脚本
```

## 配置步骤

### 1. 获取 Tavily API Key

1. 访问 https://app.tavily.com 注册账号
2. 在后台获取 API Key（免费额度：1000 次/月）

### 2. 创建搜索脚本

创建 `scripts/tavily_search.sh`：

```bash
#!/bin/bash
# Tavily Search Wrapper for OpenClaw

# TODO: 替换为你自己的 API Key
API_KEY="your-tavily-api-key-here"

QUERY="$1"
COUNT="${2:-5}"

curl -s -X POST "https://api.tavily.com/search" \
  -H "Content-Type: application/json" \
  -d "{\"query\": \"$QUERY\", \"api_key\": \"$API_KEY\", \"count\": $COUNT}"
```

### 3. 添加执行权限

```bash
chmod +x scripts/tavily_search.sh
```

### 4. 测试

```bash
./scripts/tavily_search.sh "测试搜索" 3
```

## 使用方法

在 AI 助手中，通过 exec 工具调用：

```bash
~/.openclaw/workspace/scripts/tavily_search.sh "搜索关键词" [结果数量]
```

默认返回 5 条结果。

## 输出格式

脚本返回 JSON 格式，包含：
- `results[]` - 搜索结果数组
- 每个结果：`title`, `url`, `content`, `score`

## 示例输出

```json
{
  "results": [
    {
      "title": "搜索结果标题",
      "url": "https://example.com",
      "content": "搜索结果摘要...",
      "score": 0.98
    }
  ]
}
```

## 注意事项

- API Key 免费额度用完后需要充值
- 建议在 Tavily 后台设置使用限制避免超额
