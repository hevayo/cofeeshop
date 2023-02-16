import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "mysample",
	id: "mysample-73a4a491-3db2-4b5c-a26a-84e4b450f401"
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
