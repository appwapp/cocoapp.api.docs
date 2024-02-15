using RestSharp;

// Set the API key
string apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";

var options = new RestClientOptions("https://api.cocoapp.com")
{
	MaxTimeout = -1,
};
var client = new RestClient(options);
var request = new RestRequest("/api/connectors/sms/external/v1/messages", Method.Post);
request.AddHeader("Content-Type", "application/vnd.api+json");
request.AddHeader("Accept", "application/vnd.api+json");
request.AddHeader("Authorization", "Bearer " + apiKey);

var body = @"{" + "\n" +
@"  ""data"": {" + "\n" +
@"    ""type"": ""messages""," + "\n" +
@"    ""attributes"": {" + "\n" +
@"      ""to"": ""15145551234""," + "\n" +
@"      ""content"": ""Hello world!""" + "\n" +
@"    }" + "\n" +
@"  }" + "\n" +
@"}";

request.AddStringBody(body, DataFormat.Json);
RestResponse response = await client.ExecuteAsync(request);
Console.WriteLine(response.Content);