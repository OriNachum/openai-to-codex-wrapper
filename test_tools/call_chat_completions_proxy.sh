#!/bin/bash
# Source common configuration
source "$(dirname "$0")/config.sh"

curl localhost:8080/chat/completions -s \
-H "Content-Type: application/json" \
-H "Authorization: Bearer ${OPENAI_API_KEY}" \
-d '{
"model": "'"${MODEL_ID}"'",
"messages": [{
    "role": "user",
    "content": "Say 3 words, and 3 words only."
}]
}'