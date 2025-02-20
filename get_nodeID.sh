#!/bin/bash

# URL API cần gọi
URL="https://beta.orchestrator.nexus.xyz/nodes"

# Dữ liệu gửi trong request
DATA_RAW=$'\u0008\u0001\u0012$1c298d0a-85a8-4244-b1b5-42617f6d1561'

# Headers
HEADERS=(
  -H "Accept: */*"
  -H "Accept-Language: en,en-US;q=0.9,vi;q=0.8"
  -H "Connection: keep-alive"
  -H "Content-Type: application/octet-stream"
  -H "Origin: https://app.nexus.xyz"
  -H "Referer: https://app.nexus.xyz/"
  -H "Sec-Fetch-Dest: empty"
  -H "Sec-Fetch-Mode: cors"
  -H "Sec-Fetch-Site: same-site"
  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36"
  -H "sec-ch-ua: \"Not(A:Brand\";v=\"99\", \"Google Chrome\";v=\"133\", \"Chromium\";v=\"133\""
  -H "sec-ch-ua-mobile: ?0"
  -H "sec-ch-ua-platform: \"macOS\""
)

# Vòng lặp thử tối đa 100 lần
for ((i=1; i<=100; i++)); do
  echo "Try #$i"

  # Gửi request bằng curl
  RESPONSE=$(curl -s -X POST "${URL}" "${HEADERS[@]}" --data-raw "$DATA_RAW")

  echo "Response:"
  echo "$RESPONSE"

  # Kiểm tra nếu không có lỗi "Gateway", thì dừng vòng lặp
  if [[ "$RESPONSE" != *"Gateway"* ]]; then
    echo "Success!"
    break
  fi

  sleep 1
done
