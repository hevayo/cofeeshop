import ballerina/graphql;

# A service representing a network-accessible GraphQL API
@display {
    label: "myGraph",
    id: "myGraph-8f0e2aa1-499b-449e-9931-a0baf7f1b936"
}
service / on new graphql:Listener(8090) {

    # A resource for generating greetings
    # Example query:
    # query GreetWorld{ 
    # greeting(name: "World") 
    # }
    # Curl command: 
    # curl -X POST -H "Content-Type: application/json" -d '{"query": "query GreetWorld{ greeting(name:\"World\") }"}' http://localhost:8090
    #
    # + name - the input string name
    # + return - string name with greeting message or error
    resource function get greeting(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }

    resource function get sample() returns MyService {

    }

    resource function get persons() returns Person {

    }
}

service class MyService {
}

service class Person {
}
