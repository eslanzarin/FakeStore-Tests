*** Settings ***
Documentation           Keywords for actions and tests in the endpoint /products PATCH method
Resource                ../support/base.robot

*** Keywords ***
PATCH endpoint /products
   ${response}        PATCH On Session        fakestoreapi        /products/15        json=&{payload}        expected_status=anything
   Set Global Variable         ${response}

PATCH endpoint /products Invalid Id
   ${response}        PATCH On Session        fakestoreapi        /products/22        json=&{payload}        expected_status=anything
   Set Global Variable         ${response}

Get Static Product Info "${type}"
   ${payload}             Get Static Product Data        ${type}
   Set Global Variable    ${payload}