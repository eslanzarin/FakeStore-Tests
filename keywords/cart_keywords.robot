*** Settings ***
Documentation           Keywords for actions and tests in the endpoint /cart
Resource                ../support/base.robot

*** Keywords ***
GET Endpoint /products    
    ${response}        GET On Session          fakestoreapi        /products
    Set Global Variable        ${response}  

GET Endpoint /products By Id
    ${response}        GET On Session         fakestoreapi         /products/1
    Set Global Variable         ${response} 

Log Response Message
    Log To Console          ${response.content}       
