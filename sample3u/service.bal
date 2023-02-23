import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "sample3u",
	id: "sample3u-94e260b9-917b-4abb-b0d8-f1b7d1a8eb66"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
