*** Settings ***
Documentation         Keywords for the whole program

*** Keywords ***
Import Static Info
    [Arguments]        ${json_archive_name}
    ${json_archive}    Get File    ./support/fixtures/static/${json_archive_name}
    ${data}            Evaluate    json.loads('''${json_archive}''')        json 
    [Return]           ${data}

Log Response Info
    Log To Console          \nStatus Code: ${response.status_code} 
    Log To Console          \nResponse: ${response.content} 