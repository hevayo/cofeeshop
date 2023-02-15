import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "sample5",
	id: "sample5-c0f33111-60c2-49c8-b3e8-75bd57a7a230"
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
