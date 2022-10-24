*** Settings ***
Documentation           Tests archive in the endpoint /products
Resource                ../support/base.robot
Suite Setup             Iniciate Session   

*** Test Cases ***
#========================================================PUT========================================================
Test Case 53: PATCH Update All Product Info
    [Tags]        53
    Get Static Product Info "change_all_data"
    PUT endpoint /products
    Log Response Info

Test Case 53: PATCH Update Product with Blank Title
    [Tags]        54
    Get Static Product Info "blank_title"
    PUT endpoint /products
    Log Response Info

Test Case 55: PATCH Update Product with Blank Price
    [Tags]        55
    Get Static Product Info "blank_price"
    PUT endpoint /products
    Log Response Info

Test Case 56: PATCH Update Product with Blank Description
    [Tags]        56
    Get Static Product Info "blank_description"
    PUT endpoint /products
    Log Response Info

Test Case 57: PATCH Update Product with Blank Image
    [Tags]        57
    Get Static Product Info "blank_image"
    PUT endpoint /products
    Log Response Info

Test Case 58: PATCH Update Product with Blank Category
    [Tags]        58
    Get Static Product Info "blank_category"
    PUT endpoint /products
    Log Response Info

Test Case 59: PATCH Update Product with Inexistent Id
    [Tags]        59
    Get Static Product Info "blank_category"
    PUT endpoint /products Invalid Id
    Log Response Info

Test Case 60: PATCH Update Product Title
    [Tags]        60
    Get Static Product Info "title_only"
    PUT endpoint /products
    Log Response Info

Test Case 61: PATCH Update Product Price
    [Tags]        61
    Get Static Product Info "price_only"
    PUT endpoint /products
    Log Response Info

Test Case 62: PATCH Update Product Description
    [Tags]        62
    Get Static Product Info "description_only"
    PUT endpoint /products
    Log Response Info

Test Case 63: PATCH Update Product Image
    [Tags]        63
    Get Static Product Info "image_only"
    PUT endpoint /products
    Log Response Info

Test Case 64: PATCH Update Product Category
    [Tags]        64
    Get Static Product Info "category_only"
    PUT endpoint /products
    Log Response Info