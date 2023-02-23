import ballerina/http;

#
# this is the sample

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "y1",
    id: "y1-154abc06-e5d1-4c23-bc4e-51fe4cb08dbe"
}
service / on new http:Listener(9090) {

    @display {
        label: "y2",
        id: "y2-c770c3af-540f-476d-9819-68ca9de9c839"
    }
    http:Client Y2;

    function init() returns error? {
        self.Y2 = check new ("");
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
