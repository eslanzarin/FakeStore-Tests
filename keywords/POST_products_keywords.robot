*** Settings ***
Documentation           Keywords for actions and tests in the endpoint /products using POST method
Resource                ../support/base.robot

*** Keywords ***
POST endpoint /products
    ${response}        POST On Session        fakestoreapi        /products        json=&{payload}        expected_status=anything
    Set Global Variable         ${response}

Invalid "${type}" Title Data
    IF    "${type}" == "Existing"
        ${title}        Set Variable        White Gold Plated Princess
    ELSE IF    "${type}" == "Blank"
        ${title}        Set Variable   
    ELSE IF    "${type}" == "Numeric"
        ${title}        Set Variable        ${9999999}                 
    END   
    Set Global Variable        ${title}

Invalid "${type}" Price Data
    IF    "${type}" == "Blank"
        ${price}        Set Variable        
    ELSE IF    "${type}" == "Negative"
        ${price}        Set Variable        ${-9999}
    ELSE IF    "${type}" == "String"
        ${price}        Set Variable        bababababanana
    END
    Set Global Variable        ${price}

Invalid "${type}" Description Data
    IF    "${type}" == "Blank"
        ${description}        Set Variable        
    ELSE IF    "${type}" == "Numeric"
        ${description}        Set Variable        ${999999}
    END
    Set Global Variable        ${description}

Invalid Blank Image Data
    ${image}        Set Variable        
    Set Global Variable        ${image}

Invalid Blank Category Data
    ${category}        Set Variable
    Set Global Variable        ${category}