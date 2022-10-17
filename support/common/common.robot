*** Settings ***
Documentation         Keywords for the whole program
Library               OperatingSystem

*** Keywords ***
Import Static Info
    [Arguments]        ${json_archive_name}
    ${json_archive}    Get File    ./support/fixtures/static/${json_archive_name}
    ${data}            Evaluate    json.loads('''${json_archive}''')        json 
    [Return]           ${data}

Log Response Message
    Log To Console          /nResponse: ${response.content}       

Log Status Code
    Log To Console          /nStatus Code: ${response.status_code} 