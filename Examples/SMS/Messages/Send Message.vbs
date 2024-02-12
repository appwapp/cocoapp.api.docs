Dim apiKey, xmlHttp

' Set the API key
Set apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

' Generate the request
Set xmlHttp = Server.Createobject("MSXML2.ServerXMLHTTP")
xmlHttp.Open("POST", "https://api.cocoapp.com/api/connectors/sms/external/v1/messages", false);

' Add the required headers
xmlHttp.setRequestHeader("Accept",        "application/vnd.api+json")
xmlHttp.setRequestHeader("Authorization", "Bearer " + apiKey)
xmlHttp.setRequestHeader("Content-Type",  "application/vnd.api+json")

' Send the request with a JSON body
xmlHttp.Send("{""data"": { ""type"": ""messages"", ""attributes"": { ""to"": ""+15555555555"", ""content"": ""Hello world!"" } } }")

' Get the response
Response.write(xmlHttp.responseText);

set xmlHttp = Nothing