import ballerina/http;

listener http:Listener httpListener = new (9090);

service / on httpListener {
    resource function post greeting() returns string { 
        return "Hello, WorldA2!"; 
    }

}