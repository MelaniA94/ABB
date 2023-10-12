import ballerina/http;

listener http:Listener httpListener = new (9090);

service / on httpListener {
    resource function post greeting(http:Request request) returns json|error {
        // Access the content of the HTTP request's payload.
        var payload = request.getJsonPayload();
        return check payload;
    }
}
