import ballerina/http;
import ballerinax/trigger.shopify;
import ballerina/io;

configurable shopify:ListenerConfig config = ?;

listener shopify:Listener webhookListener = new (config);

@display {
    label: "Shipping123",
    id: "Shipping123-9604ada1-0511-4e1c-b4d6-806daac92084"
}
http:Client shipping123Client;

@display {
    label: "OrdersService",
    id: "OrdersService"
}
service shopify:OrdersService on webhookListener {

    function init() returns error? {
        shipping123Client = check new ("");
    }

    remote function onOrdersCreate(shopify:OrderEvent event) returns error? {
        check sample();
    }
    remote function onOrdersCancelled(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersFulfilled(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersPaid(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersPartiallyFulfilled(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }

    remote function onOrdersUpdated(shopify:OrderEvent event) returns error? {

    }
}

function sample() returns error? {
    // Not Implemented
    do {
        io:println("Hello");
    } on fail error varName {
        string response = check shipping123Client->/greeting.get(name = "");
        io:println(response);
    }

}
