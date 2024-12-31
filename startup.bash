#!/bin/bash

# LINE Notify Token
TOKEN=${LINE_TOKEN}

send_notification() {
  local status=$1
  local duration=$2
  local log_url=$3
  local msg_type=$4

  START_MESSAGE=$(cat <<EOT
-
Type: Manual Build/Deploy
Action: ${status}
App: ${service_name}
Branch/Tag: ${tag_name}
Environment: ${environment}
By: ${commit_user}
Duration: ${duration}
Status: ${status}
URL: ${log_url}

EOT
)

  curl -s -X POST -H "Authorization: Bearer ${LINE_TOKEN}" -F "message=${START_MESSAGE}" https://notify-api.line.me/api/notify
}


send_notification "🚀" "N/A" "$GITHUB_SERVER_URL/$GITHUB_REPOSITORY/actions/runs/$GITHUB_RUN_ID" "DEPLOY"