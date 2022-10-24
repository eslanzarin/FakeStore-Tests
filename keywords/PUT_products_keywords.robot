*** Settings ***
Documentation           Keywords for actions and tests in the endpoint /products PUT method
Resource                ../support/base.robot

*** Keywords ***
PUT endpoint /products
   ${response}        PUT On Session        fakestoreapi        /products/15        json=&{payload}        expected_status=anything
   Set Global Variable         ${response}

PUT endpoint /products Invalid Id
   ${response}        PUT On Session        fakestoreapi        /products/22        json=&{payload}        expected_status=anything
   Set Global Variable         ${response}

Get Static Product Info "${type}"
   ${payload}             Get Static Product Data        ${type}
   Set Global Variable    ${payload}

# Get Blank Static "${key}"
#    ${response}        PUT On Session        fakestoreapi        /products/15        json=&{payload}        expected_status=anything
#    Set Global Variable         ${response}    