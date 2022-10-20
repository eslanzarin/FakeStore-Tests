*** Settings ***
Documentation           Tests archive in the endpoint /products
Resource                ../support/base.robot
Suite Setup             Iniciate Session   

*** Test Cases ***
========================================================POST========================================================
Test Case 25: POST Valid Product 
    [tags]        25
    Product Data
    POST endpoint /products
    Log Response Info

Test Case 26: POST Product with Existing Title
#status code 200, response: new product data
    [tags]        26
    Product Data
    Invalid "Existing" Title Data
    Set Payload Data
    POST endpoint /products
    Log Response Info

Test Case 27: POST Product with Blank Title
#status code 200, response: new product data
    [tags]        27
    Product Data
    Invalid "Blank" Title Data
    Set Payload Data
    POST endpoint /products
    Log Response Info

Test Case 28: POST Product with Numeric Title Type
#status code 200, response: new product data
    [tags]        28
    Product Data
    Invalid "Numeric" Title Data
    Set Payload Data
    POST endpoint /products
    Log Response Info

Test Case 29: POST Product with Blank Price
#status code 200, response: new product data
    [tags]        29
    Product Data
    Invalid "Blank" Price Data
    Set Payload Data
    POST endpoint /products
    Log Response Info

Test Case 30: POST Product with Negative Price
    [tags]        30
    Product Data
    Invalid "Negative" Price Data
    Set Payload Data
    POST endpoint /products
    Log Response Info

Test Case 31: POST Product with String Price
    [tags]        31
    Product Data
    Invalid "String" Price Data
    Set Payload Data
    POST endpoint /products
    Log Response Info

Test Case 32: POST Product with Blank Description
    [tags]        32
    Product Data
    Invalid "Blank" Description Data
    Set Payload Data
    POST endpoint /products
    Log Response Info

Test Case 33: POST Product with Numeric Description
    [tags]        33
    Product Data
    Invalid "Numeric" Description Data
    Set Payload Data
    POST endpoint /products
    Log Response Info

Test Case 34: POST Product with Blank Image Space
    [tags]        34
    Product Data
    Invalid Blank Image Data
    Set Payload Data
    POST endpoint /products
    Log Response Info

Test Case 35: POST Product with Blank Category Space
    [tags]        35
    Product Data
    Invalid Blank Category Data
    Set Payload Data
    POST endpoint /products
    Log Response Info