import ballerina/graphql;

@display {
	label: "Another",
	id: "Another-a4031b32-4603-4757-8c18-c0d8a2006388"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
