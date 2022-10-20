*** Settings ***
Documentation           Keywords for actions and tests in the endpoint /products PUT method
Resource                ../support/base.robot

*** Keywords ***
PUT endpoint /products
    ${response}        PUT On Session        fakestoreapi        /products/15        json=&{payload}        expected_status=anything
    Set Global Variable         ${response}

 Get Static Product Data "${type}"
    ${payload}             Get Static Product Data        ${type}
    Set Global Variable    ${payload}