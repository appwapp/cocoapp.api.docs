import http.client
import json

apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

conn = http.client.HTTPSConnection("api.cocoapp.com")
payload = json.dumps({
  "data": {
    "type": "messages",
    "attributes": {
      "to": "15145551234",
      "content": "Hello world!"
    }
  }
})
headers = {
  'Content-Type': 'application/vnd.api+json',
  'Accept': 'application/vnd.api+json',
  'Authorization': 'Bearer ' + apiKey
}
conn.request("POST", "/api/connectors/sms/external/v1/messages", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))