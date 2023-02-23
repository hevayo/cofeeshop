import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "sample2",
    id: "sample2-91b37ed7-f6b3-4157-b7f0-4f535087a43d"
}
service / on new http:Listener(9090) {

    @display {
        label: "sample",
        id: "sample-e753a948-1682-46cc-b808-a174be1de0cb"
    }
    http:Client Sample;

    function init() returns error? {
        self.Sample = check new ("");
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
