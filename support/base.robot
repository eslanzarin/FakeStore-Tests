*** Settings ***
Documentation         Archive for libraries importation and general needed resources
Library               RequestsLibrary
Library               Collections
Library               OperatingSystem
Library               FakerLibrary
Library               ../python_lib.py
Resource              ./common/common.robot
Resource              ./variables/variables_fakestoreapi.robot
Resource              ../keywords/cart_keywords.robot
Resource              ../keywords/login_keywords.robot
Resource              ../keywords/GET_products_keywords.robot
Resource              ../keywords/POST_products_keywords.robot
Resource              ../keywords/PUT_products_keywords.robot
Resource              ../keywords/users_keywords.robot  
Resource              ./fixtures/dynamics.robot  

*** Keywords ***
Iniciate Session
    Create Session          fakestoreapi        ${BASE_URL}