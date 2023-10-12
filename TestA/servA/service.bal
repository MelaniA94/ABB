import ballerina/http;

listener http:Listener httpListener = new (9090);

service / on httpListener {
    resource function post greeting( @http:Payload json payload) returns json {
        json response = {payload};
        return response;
    }
        
    }

