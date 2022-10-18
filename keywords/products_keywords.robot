*** Settings ***
Documentation           Keywords for actions and tests in the endpoint /products
Resource                ../support/base.robot

*** Keywords ***
GET Endpoint /products    
    ${response}        GET On Session          fakestoreapi        /products
    Set Global Variable        ${response}  

GET /products By Id
    # takes some time to run, since it makes a request with all the ids
    ${response}        Get Product By Id        #keyword from phyton_lib.py 
    Set Global Variable        ${response}
