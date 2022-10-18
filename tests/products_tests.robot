*** Settings ***
Documentation           Tests archive in the endpoint /products
Resource                ../support/base.robot
Suite Setup             Iniciate Session   

*** Test Cases ***
========================================================GET========================================================
Test Case 1: Get All Products 200
    [tags]    GET_ALL_PRODUCTS
    GET Endpoint /products
    Log Response Info

Test Case 2: Get Product By Id 200
    [Tags]    GET_PRODUCT_BY_ID
    GET /products By "Id"
    Log Response Info

Test case 3: Get Product By Invalid Id 
    #status code: 200, blank body
    [Tags]    GET_INVALID_PRODUCT
    GET /products By "Invalid Id"
    Log Response Info