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