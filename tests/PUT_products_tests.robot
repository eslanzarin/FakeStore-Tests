*** Settings ***
Documentation           Tests archive in the endpoint /products
Resource                ../support/base.robot
Suite Setup             Iniciate Session   

*** Test Cases ***
========================================================PUT========================================================
Test Case 41: PUT Update All Product Info
    [Tags]        41
    Get Static Product Data "change_all_data"
    PUT endpoint /products
    Log Response Info

Test Case 42: PUT Update Product with Blank Title
    [Tags]        42

Test Case 43: PUT Update Product with Same Title
    [Tags]        43

Test Case 44: PUT Update Product with Blank Price
    [Tags]        44

Test Case 45: PUT Update Product with Negative Price
    [Tags]        45

Test Case 46: PUT Update Product with String Price
    [Tags]        46

Test Case 47: PUT Update Product with Blank Description
    [Tags]        47

Test Case 48: PUT Update Product with Blank Image
    [Tags]        48

Test Case 49: PUT Update Product with Blank Category
    [Tags]        49

Test Case 50: PUT Update Product with Inexistent Id
    [Tags]        50

Test Case 51: PUT Update Product Title
    [Tags]        51

Test Case 52: PUT Update Product Price
    [Tags]        52

Test Case 53: PUT Update Product Description
    [Tags]        53

Test Case 54: PUT Update Product Image
    [Tags]        54

Test Case 55: PUT Update Product Category
    [Tags]        55