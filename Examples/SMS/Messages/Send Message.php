<?php
// Set the API key
$apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.cocoapp.com/api/connectors/sms/external/v1/messages',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
  "data": {
    "type": "messages",
    "attributes": {
      "to": "15145551234",
      "content": "Hello world!"
    }
  }
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/vnd.api+json',
    'Accept: application/vnd.api+json',
    'Authorization: Bearer '.$apiKey
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
