*** Settings ***
Documentation           Tests archive in the endpoint /login
Resource                ..\support\base.robot
Suite Setup             Iniciate Session

*** Test Cases ***
========================================================POST========================================================
Test Case: POST Login with Valid User
    #status code: 200, message: token{}
    [tags]        VALID_LOGIN
    Get Static Login Data "valid_user"
    Login POST /login
    Log Response Info

Test Case: POST Login with Inexistent User
    # status code: 401, message: 'user name or password is incorrect'
    [tags]        INEXISTENT_USER_LOGIN
    Get Static Login Data "inexistent_user"
    Login POST /login
    Log Response Info

Test Case: POST Login Blank Password Space
    # status code: 524 (timeout), message: html format
    [tags]        BLANK_PASS
    Get Static Login Data "noPassword_user"
    Login POST /login
    Log Response Info

Test Case: POST Login with Blank Username Space
    # status code: 524 (timeout), message: html format
    [tags]        BLANK_USERNAME
    Get Static Login Data "noUsername_user"
    Login POST /login
    Log Response Info

Test Case: POST Login with Correct Username 
    # status code: 401, message: 'username or password is incorrect'
    [tags]        CORRECT_USERNAME
    Get Static Login Data "valid_username"
    Login POST /login
    Log Response Info

Test Case: POST Login with Valid Email and Password
    # status code: 401, message: 'username or password is incorrect'
    [tags]        VALID_EMAIL
    Get Static Login Data "valid_email"
    Login POST /login
    Log Response Info