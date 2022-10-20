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
    [tags]        28

Test Case 29: POST Product with Blank Price
    [tags]        29

Test Case 30: POST Product with Negative Price
    [tags]        30

Test Case 31: POST Product with String Price
    [tags]        31

Test Case 32: POST Product with Blank Description
    [tags]        32

Test Case 33: POST Product with Invalid Image href
    [tags]        33