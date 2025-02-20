#!/bin/bash

# URL API cần gọi
URL="https://beta.orchestrator.nexus.xyz/nodes"

# Dữ liệu gửi trong request
DATA_RAW=$'\u0008\u0001\u0012$1c298d0a-85a8-4244-b1b5-42617f6d1561'

# Headers
HEADERS=(
  -H "Accept: */*"
  -H "Content-Type: application/octet-stream"
)

# Vòng lặp thử tối đa 100 lần
for ((i=1; i<=100; i++)); do
  echo "Try #$i"

  # Gửi request bằng curl
  RESPONSE=$(curl -s -X POST "${URL}" "${HEADERS[@]}" --data-raw "$DATA_RAW")

  # Hiển thị phản hồi
  echo "Response: $RESPONSE"

  # Kiểm tra nếu phản hồi hợp lệ (không chứa "Gateway")
  if [[ "$RESPONSE" != *"Gateway"* && "$RESPONSE" != "" ]]; then
    echo "$RESPONSE" > id.txt
    echo "✅ Lưu thành công vào id.txt!"
    break
  fi

  # Nếu lỗi, chờ 1 giây rồi thử lại
  sleep 1
done
