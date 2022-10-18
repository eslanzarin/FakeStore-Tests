*** Settings ***
Documentation           Keywords for actions and tests in the endpoint /login
Resource                ../support/base.robot

*** Keywords ***
Login POST /login
    ${response}        POST On Session        fakestoreapi        /auth/login        json=&{payload}        expected_status=anything
    Set Global Variable         ${response}

Get Static Login Data "${user}"        #VALID ARGUMENTS: valid_user, inexistent_user, noUsername_user, noPassword_user, valid_username, valid_email
    ${payload}             Get Static Login Data        ${user}
    Set Global Variable    ${payload}

