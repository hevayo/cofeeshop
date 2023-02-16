import ballerinax/mysql;
import ballerinax/mysql.driver as _;
import ballerina/graphql;

@display {
    label: "Another",
    id: "Another-a4031b32-4603-4757-8c18-c0d8a2006388"
}
service / on new graphql:Listener(9090) {

    @display {
        label: "mysql",
        id: "mysql-27b746f9-0a5e-4888-aec7-be85bab33fb5"
    }
    mysql:Client mysqlEp;

    function init() returns error? {
        self.mysqlEp = check new ();
    }

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
