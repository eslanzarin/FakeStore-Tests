*** Settings ***
Documentation           Keywords for actions and tests in the endpoint /products
Resource                ../support/base.robot

*** Keywords ***
GET Endpoint /products    
    ${response}        GET On Session          fakestoreapi        /products
    Set Global Variable        ${response}  

GET /products By "${type}"
    IF    "${type}" == "Id"
    # takes some time to run, since it makes a request with all the ids, the response is based only in the last request
        ${response}        Get Product By Id        #keyword from phyton_lib.py
        Set Global Variable        ${response}
    ELSE IF    "${type}" == "Invalid Id"
        ${response}         GET On Session         fakestoreapi         /products/99999999            expected_status=Anything
        Set Global Variable        ${response}
    END

GET Limit /products
    ${number_limit}     Get Limit        products        #keyword from phyton_lib
    ${response}         GET On Session         fakestoreapi             url=/products?limit=${number_limit}            expected_status=Anything
    Set Global Variable        ${response}

GET "${type}" /products Limit
    IF    "${type}" == "Beyond"
        ${limit}        Get Beyond Limit        products
    ELSE IF    "${type}" == "Negative"
        ${limit}        Set Variable        ${-9}    
    ELSE IF    "${type}" == "String"
        ${limit}        Set Variable        bababababanana
    END
    ${response}         GET On Session         fakestoreapi             url=/products?limit=${limit}            expected_status=Anything
    Set Global Variable        ${response}

GET Sort /products "${type}"
    ${response}         GET On Session         fakestoreapi             url=/products?sort=${type}            expected_status=Anything
    Set Global Variable        ${response}

GET /products/categories
    ${response}         GET On Session         fakestoreapi             url=/products/categories            expected_status=Anything
    Set Global Variable        ${response}

GET /products/category/specific
    ${response}         Get Product By Category
    Set Global Variable        ${response}

GET /products/category/inexistent
    ${response}         GET On Session         fakestoreapi             url=/products/category/bababababanana            expected_status=Anything
    Set Global Variable        ${response}

GET /products/category/limit
    ${number_limit}     Get Limit In Category        #keyword from phyton_lib
    ${response}         GET On Session         fakestoreapi             url=/products?limit=${number_limit}            expected_status=Anything
    Set Global Variable        ${response}