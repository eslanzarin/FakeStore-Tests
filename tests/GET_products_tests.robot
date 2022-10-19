*** Settings ***
Documentation           Tests archive in the endpoint /products
Resource                ../support/base.robot
Suite Setup             Iniciate Session   

*** Test Cases ***
========================================================GET========================================================
Test Case 1: GET All Products 200
    [tags]    1
    GET Endpoint /products
    Log Response Info

Test Case 2: GET Product By Id 200
    [Tags]    2
    GET /products By "Id"
    Log Response Info

Test case 3: GET Product By Invalid Id 
    #status code: 200, blank body
    [Tags]    3
    GET /products By "Invalid Id"
    Log Response Info

Test Case 4: GET Limit Products
    #status code: 200, body w/ infos about the products requested
    [Tags]    4
    GET Limit /products
    Log Response Info

Test Case 5: GET Beyond Limit
    #status code: 200, returns all the products (kinda dumb test case, but anyways...)
    [Tags]    5
    GET "Beyond" /products Limit
    Log Response Info

Test Case 6: GET Negative Limit
    #status code: 200, returns the max number of products minus the number passed as limit
    [Tags]     6
    GET "Negative" /products Limit
    Log Response Info

Test Case 7: GET String Limit
    #status code: 200, returns all the products
    [Tags]     7
    GET "String" /products Limit
    Log Response Info

Test Case 8: GET Sort Limit Ascending
    [tags]     8
    GET Sort /products "asc"
    Log Response Info

Test Case 9: GET Sort Limit Descending
    [tags]     9
    GET Sort /products "desc"
    Log Response Info

Test Case 10: GET Sort Limit Invalid Word
    #status code: 200, returns all the products in ascending id order
    [tags]     10
    GET Sort /products "bababababanana"
    Log Response Info

Test Case 11: GET All Products Categories 
    #status code: 200, returns all the categories
    [tags]     11
    GET /products/categories 
    Log Response Info

Test Case 12: GET All Products from All Categories
    #status code: 200, get request from all the categories, logs only the last one for validation purposes
    [tags]     12
    GET /products/category/specific
    Log Response Info

Test Case 13: GET All Products from Inexistent Category
    #status code: 200, returns blank body message
    [tags]     13
    GET /products/category/inexistent
    Log Response Info

Test Case 14: GET Products from Specific Category Limiting the Results
    #status code: 200, returns info from the limited categories
    [tags]    14
    GET /products/category/limit
    Log Response Info

Test Case 15: GET Products from Specific Category Ascending
    #status code: 200
    [Tags]    15
    GET /products/category/specific            #will return the last category from the request
    GET /products/category Sort "asc"
    Log Response Info

Test Case 16: GET Products from Specific Category Descending
    #status code: 200
    [Tags]    16
    GET /products/category/specific            #will return the last category from the request
    GET /products/category Sort "desc"
    Log Response Info

Test Case 17: GET Products from Specific Category Limiting Results Ascending
    [Tags]    17
    GET /products/category/specific
    GET /products/category/limit
    GET /products/category Sort "asc" and Limit
    Log Response Info

Test Case 18: GET Products from Specific Category Limiting Results Descending
    [Tags]    18
    GET /products/category/specific
    GET /products/category/limit
    GET /products/category Sort "desc" and Limit
    Log Response Info

Test Case 19: GET Products from Specific Category Limiting Results with Negative Number Ascending
    [Tags]    19

Test Case 20: GET Products from Specific Category Limiting Results with Negative Number Descending
    [Tags]    20

Test Case 21: GET Products from Specific Category Limiting Results with String Ascending
    [Tags]    21

Test Case 22: GET Products from Specific Category Limiting Results with String Descending
    [Tags]    22

