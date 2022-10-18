*** Settings ***
Documentation           Tests archive in the endpoint /products
Resource                ../support/base.robot
Suite Setup             Iniciate Session   

*** Test Cases ***
========================================================POST========================================================
Test Case: POST Valid Product 
    [tags]        POST_PRODUCT
