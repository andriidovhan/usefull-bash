#!/bin/bash

# Set the ROOM_ID & AUTH_TOKEN variables below.
# Further instructions at https://www.hipchat.com/docs/apiv2/auth

ROOM_ID=<room_id>
AUTH_TOKEN=<auth_token>
MESSAGE="Hello world!"

curl -H "Content-Type: application/json" \
     -X POST \
     -d "{\"color\": \"purple\", \"message_format\": \"text\", \"message\": \"$MESSAGE\" }" \
     https://<some_url>.hipchat.com/v2/room/$ROOM_ID/notification?auth_token=$AUTH_TOKEN
