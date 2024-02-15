#!/bin/bash

curl --location 'https://api.cocoapp.com/api/connectors/sms/external/v1/messages' \
--header 'Content-Type: application/vnd.api+json' \
--header 'Accept: application/vnd.api+json' \
--header 'Authorization: Bearer xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' \
--data '{
  "data": {
    "type": "messages",
    "attributes": {
      "to": "15145551234",
      "content": "Hello world!"
    }
  }
}'