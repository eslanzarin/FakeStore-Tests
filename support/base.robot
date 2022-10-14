*** Settings ***
Documentation         Archive for libraries importation and general needed resources
Library               RequestsLibrary
Library               Collections
Library               OperatingSystem
Resource              ./common/common.robot
Resource              ./variables/variables_fakestoreapi.robot
Resource              ../keywords/cart_keywords.robot
Resource              ../keywords/login_tests.robot
Resource              ../keywords/products_keywords.robot
Resource              ../keywords/users_keywords.robot    

*** Keywords ***
Iniciate Session
    Create Session          fakestoreapi        ${BASE_URL}