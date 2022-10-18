*** Settings ***
Documentation           Tests archive in the endpoint /products
Resource                ../support/base.robot

*** Test Cases ***
========================================================GET========================================================
Test Case 1: Get All Products 200
    [tags]    GET_ALL_PRODUCTS
    Iniciate Session
    GET Endpoint /products
    Log Response Info

Test Case 2: Get Product By Id 200
    [Tags]    GET_PRODUCT_BY_ID
    Iniciate Session
    GET /products By Id
    Log Response Info