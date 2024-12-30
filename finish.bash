#!/bin/bash

curl -X POST \
  -H "Authorization: Bearer ${LINE_TOKEN} " \
  -F "message=Here is a notification with an Finish Pipeline!" \
  https://notify-api.line.me/api/notify