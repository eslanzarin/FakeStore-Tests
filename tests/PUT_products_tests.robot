*** Settings ***
Documentation           Tests archive in the endpoint /products
Resource                ../support/base.robot
Suite Setup             Iniciate Session   

*** Test Cases ***
#========================================================PUT========================================================
Test Case 41: PUT Update All Product Info
    [Tags]        41
    Get Static Product Info "change_all_data"
    PUT endpoint /products
    Log Response Info

Test Case 42: PUT Update Product with Blank Title
    [Tags]        42
    Get Static Product Info "blank_title"
    PUT endpoint /products
    Log Response Info

Test Case 44: PUT Update Product with Blank Price
    [Tags]        43
    Get Static Product Info "blank_price"
    PUT endpoint /products
    Log Response Info

Test Case 47: PUT Update Product with Blank Description
    [Tags]        44
    Get Static Product Info "blank_description"
    PUT endpoint /products
    Log Response Info

Test Case 48: PUT Update Product with Blank Image
    [Tags]        45
    Get Static Product Info "blank_image"
    PUT endpoint /products
    Log Response Info

Test Case 49: PUT Update Product with Blank Category
    [Tags]        46
    Get Static Product Info "blank_category"
    PUT endpoint /products
    Log Response Info

Test Case 50: PUT Update Product with Inexistent Id
    [Tags]        47
    Get Static Product Info "blank_category"
    PUT endpoint /products Invalid Id
    Log Response Info

Test Case 51: PUT Update Product Title
    [Tags]        48
    Get Static Product Info "title_only"
    PUT endpoint /products
    Log Response Info

Test Case 52: PUT Update Product Price
    [Tags]        49
    Get Static Product Info "price_only"
    PUT endpoint /products
    Log Response Info

Test Case 53: PUT Update Product Description
    [Tags]        50
    Get Static Product Info "description_only"
    PUT endpoint /products
    Log Response Info

Test Case 54: PUT Update Product Image
    [Tags]        51
    Get Static Product Info "image_only"
    PUT endpoint /products
    Log Response Info

Test Case 55: PUT Update Product Category
    [Tags]        52
    Get Static Product Info "category_only"
    PUT endpoint /products
    Log Response Info