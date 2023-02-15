import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "sample4",
	id: "sample4-1a151920-6697-4126-af7d-352058692d1a"
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
