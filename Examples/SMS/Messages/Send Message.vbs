Dim apiKey, xmlHttp

' Set the API key
apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

' Generate the request
Set xmlHttp = Createobject("MSXML2.ServerXMLHTTP")
xmlHttp.Open "POST", "https://api.cocoapp.com/api/connectors/sms/external/v1/messages", false

' Add the required headers
xmlHttp.setRequestHeader "Accept",        "application/vnd.api+json"
xmlHttp.setRequestHeader "Authorization", "Bearer " + apiKey
xmlHttp.setRequestHeader "Content-Type",  "application/vnd.api+json"

' Send the request with a JSON body
xmlHttp.Send("{""data"": { ""type"": ""messages"", ""attributes"": { ""to"": ""+15145551234"", ""content"": ""Hello world!"" } } }")

' Get the response
If xmlHttp.status = 201 Then
    WScript.Echo "Message sent!"
Else
    WScript.Echo "Error: " + xmlHttp.responseText
End If

set xmlHttp = Nothing
