*** Settings ***
Documentation           Tests archive in the endpoint /carts
Resource                ../support/base.robot

*** Test Cases ***
Test Case 1: Get All Products 200
    [tags]    GET_ALL_PRODUCTS
    Iniciate Session
    GET Endpoint /products
    Log Response Message

Test Case 2: Get Product By Id 200
    [Tags]    GET_PRODUCT_BY_ID
    Iniciate Session
    GET Endpoint /products By Id
    Log Response Message