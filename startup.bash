#!/bin/bash

# LINE Notify Token
TOKEN=${LINE_TOKEN}

# Define variables for each line
LINE1="Custom Line 1 Text"
LINE2="Line 2"
LINE3="Line 3"

# Construct the multi-line message
MESSAGE=$"${LINE1}\n${LINE2}\n${LINE3}"

# Send the Notification
curl -X POST \
  -H "Authorization: Bearer ${TOKEN}" \
  -F "message=$MESSAGE" \
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