*** Settings ***
Documentation         Archive for libraries importation and general needed resources
Library               RequestsLibrary
Library               Collections
Library               OperatingSystem
Library               ./python_lib.py
Resource              ./common/common.robot
Resource              ./variables/variables_fakestoreapi.robot
Resource              ../keywords/cart_keywords.robot
Resource              ../keywords/login_keywords.robot
Resource              ../keywords/products_keywords.robot
Resource              ../keywords/users_keywords.robot    

*** Keywords ***
Iniciate Session
    Create Session          fakestoreapi        ${BASE_URL}