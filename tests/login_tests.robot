*** Settings ***
Documentation           Tests archive in the endpoint /login
Resource                ../support/base.robot

*** Test Cases ***
========================================================POST========================================================
Test Case: POST Login with Valid User
    [tags]        VALID_LOGIN
    Iniciate Session
    Import Static Valid Login Info 
    Login POST /login
    Log Status Code
    Log Response Message

Test Case: POST Login with Inexistent User
    # status code: 401, message: 'user name or password is incorrect'
    [tags]        INEXISTENT_USER_LOGIN
    Iniciate Session
    Import Static Inexistent Login Info 
    Login POST /login
    Log Status Code
    Log Response Message

Test Case: POST Login Blank Password Space
    # status code: 524 (timeout), message: html format
    [tags]        BLANK_PASS
    Iniciate Session
    Import Static Blank Password Info
    Login POST /login
    Log Status Code
    Log Response Message