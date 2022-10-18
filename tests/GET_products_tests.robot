*** Settings ***
Documentation           Tests archive in the endpoint /products
Resource                ../support/base.robot
Suite Setup             Iniciate Session   

*** Test Cases ***
========================================================GET========================================================
Test Case 1: GET All Products 200
    [tags]    GET_ALL_PRODUCTS
    GET Endpoint /products
    Log Response Info

Test Case 2: GET Product By Id 200
    [Tags]    GET_PRODUCT_BY_ID
    GET /products By "Id"
    Log Response Info

Test case 3: GET Product By Invalid Id 
    #status code: 200, blank body
    [Tags]    GET_INVALID_PRODUCT
    GET /products By "Invalid Id"
    Log Response Info

Test Case 4: GET Limit Products
    #status code: 200, body w/ infos about the products requested
    [Tags]    LIMIT_PRODUCTS 
    GET Limit /products
    Log Response Info

Test Case 5: GET Beyond Limit
    #status code: 200, returns all the products (kinda dumb test case, but anyways...)
    [Tags]    BEYOND_PRODUCTS
    GET "Beyond" /products Limit
    Log Response Info

Test Case 6: GET Negative Limit
    #status code: 200, returns the max number of products minus the number passed as limit
    [Tags]     NEGATIVE_PRODUCT_LIMIT
    GET "Negative" /products Limit
    Log Response Info

Test Case 6: GET String Limit
    #status code: 200, returns all the products
    [Tags]     STRING_PRODUCT_LIMIT
    GET "String" /products Limit
    Log Response Info

Test Case 7: GET Sort Limit Ascending
    [tags]     SORT_ASC_PRODUCT
    GET Sort /products "asc"
    Log Response Info

Test Case 7: GET Sort Limit Descending
    [tags]     SORT_DESC_PRODUCT
    GET Sort /products "desc"
    Log Response Info

Test Case 8: GET Sort Limit Invalid Word
    #status code: 200, returns all the products in ascending id order
    [tags]     SORT_INVALID_PRODUCT
    GET Sort /products "bababababanana"
    Log Response Info

Test Case 9: GET All Products Categories 
    #status code: 200, returns all the categories
    [tags]     GET_ALL_CATEGORIES
    GET /products/categories 
    Log Response Info

Test Case 10: GET All Products from All Categories
    #status code: 200, get request from all the categories, logs only the last one for validation purposes
    [tags]     GET_ALL_PROD_CAT
    GET /products/category/specific
    Log Response Info

Test Case 11: GET All Products from Inexistent Category
    #status code: 200, returns blank body message
    [tags]     GET_INEXISTENT_CAT
    GET /products/category/inexistent
    Log Response Info
