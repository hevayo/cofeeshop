import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Sample2",
	id: "Sample2-bdd223d6-4da9-4f8b-bfc5-2b622ea524e7"
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
