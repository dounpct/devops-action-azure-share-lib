#!/bin/bash

# LINE Notify Token
TOKEN=${LINE_TOKEN}

# Define a variable for Line 1
LINE1="Custom Line 1 Text"

# Construct the multi-line message
MESSAGE=$"${LINE1}\nLine 2\nLine 3"

# Send the Notification
curl -X POST \
  -H "Authorization: Bearer ${TOKEN}" \
  -F "message=${MESSAGE}" \
  https://notify-api.line.me/api/notify


# # Message to Send (Supports Multi-Line)
# MESSAGE="${service_name}\nLine 2\nLine 3"

# # Send the Notification
# curl -X POST \
#   -H "Authorization: Bearer ${TOKEN}" \
#   -F $"message=${MESSAGE}" \
#   https://notify-api.line.me/api/notify


# send_notification() {
#   local status=$1
#   local duration=$2
#   local log_url=$3
#   local msg_type=$4

#   message='{"text": "'"${status}"'GitHub Action: Action : '"${msg_type}"'\nType : Build with Tag\nApplication : '"${service_name}"'\nEnvironment : '"${environment}"'\nRef-Key : '"${image_tag}"'\nTagName : '"${tag_name}"'\nSHA1 : '"${short_sha}"'\nStatus : '"N/A"'\nDuration : '"${duration}"' seconds\nBy : '"${commit_user}"'\nLog : \"'"${log_url}"'\""}'
  
#   curl -X POST \
#     -H "Authorization: Bearer ${LINE_TOKEN} " \
#     -F $"message=${message}!" \
#     https://notify-api.line.me/api/notify
# }


# send_notification "🚀" "N/A" "$GITHUB_SERVER_URL/$GITHUB_REPOSITORY/actions/runs/$GITHUB_RUN_ID" "START"