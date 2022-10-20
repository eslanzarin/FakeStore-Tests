*** Settings ***
Documentation           Keywords for actions and tests in the endpoint /products
Resource                ../support/base.robot

*** Keywords ***
POST endpoint /products
    ${response}        POST On Session        fakestoreapi        /products        json=&{payload}        expected_status=anything
    Set Global Variable         ${response}

Invalid "${type}" Title Data
    IF    "${type}" == "Existing"
        ${title}        Set Variable        White Gold Plated Princess
    ELSE IF    "${type}" == "Blank"
        ${title}         Set Variable              
    END   
    Set Global Variable        ${title}
