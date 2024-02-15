# Set the API key
$apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Content-Type", "application/vnd.api+json")
$headers.Add("Accept", "application/vnd.api+json")
$headers.Add("Authorization", "Bearer $apiKey")

$body = @"
{
  `"data`": {
    `"type`": `"messages`",
    `"attributes`": {
      `"to`": `"15145551234`",
      `"content`": `"Hello world!`"
    }
  }
}
"@

$response = Invoke-RestMethod 'https://api.cocoapp.com/api/connectors/sms/external/v1/messages' -Method 'POST' -Headers $headers -Body $body
$response | ConvertTo-Json