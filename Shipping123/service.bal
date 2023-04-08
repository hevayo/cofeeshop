import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "Shipping123",
    id: "Shipping123-9604ada1-0511-4e1c-b4d6-806daac92084"
}
service / on new http:Listener(9090) {

    @display {
        label: "Tracking123",
        id: "Tracking123-896f9dcf-ff6e-450f-bd72-3cacf645b473"
    }
    http:Client tracking123Client;

    function init() returns error? {
        self.tracking123Client = check new ("");
    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {

        // Send a response back to the caller.
        record {} getResponse = check self.tracking123Client->/greeting.get;
        record {} postResponse = check self.tracking123Client->/sample.post(message = ());
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
