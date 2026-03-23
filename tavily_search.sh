#!/bin/bash
# Tavily Search Wrapper for OpenClaw
# 使用方法: ./tavily_search.sh "搜索关键词" [结果数量]

# TODO: 替换为你的 Tavily API Key
API_KEY="your-tavily-api-key-here"

QUERY="$1"
COUNT="${2:-5}"

if [ -z "$QUERY" ]; then
    echo "Usage: ./tavily_search.sh \"搜索关键词\" [结果数量]"
    exit 1
fi

curl -s -X POST "https://api.tavily.com/search" \
  -H "Content-Type: application/json" \
  -d "{\"query\": \"$QUERY\", \"api_key\": \"$API_KEY\", \"count\": $COUNT}"
