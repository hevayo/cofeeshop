import ballerina/graphql;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "Counter",
    id: "Counter-545acf1e-92f8-414a-be40-6eba3ccf02b0"
}
service / on new http:Listener(9090) {

    @display {
        label: "Another",
        id: "Another-a4031b32-4603-4757-8c18-c0d8a2006388"
    }
    graphql:Client Another;

    function init() returns error? {
        self.Another = check new ("");
    }

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
