*** Settings ***
Documentation           Keywords for actions and tests in the endpoint /login
Resource                ../support/base.robot

*** Keywords ***
Login POST /login
    ${response}        POST On Session        fakestoreapi        /auth/login        json=&{payload}        expected_status=anything
    Set Global Variable         ${response}


Import Static Valid Login Info
    ${json}           Import Static Info          login_info.json
    ${payload}        Set Variable                ${json["valid_user"]}          
    Set Global Variable        ${payload}

Import Static Inexistent Login Info
    ${json}           Import Static Info          login_info.json
    ${payload}        Set Variable                ${json["inexistent_user"]}          
    Set Global Variable        ${payload}

Import Static Blank Password Info
    ${json}           Import Static Info          login_info.json
    ${payload}        Set Variable                ${json["noPassword_user"]}          
    Set Global Variable        ${payload}

Import Static Blank Username Info
    ${json}           Import Static Info          login_info.json
    ${payload}        Set Variable                ${json["noPassword_user"]}          
    Set Global Variable        ${payload}