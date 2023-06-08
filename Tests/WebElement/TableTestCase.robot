*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Table Test Case
    Open Browser    https://qa-practice.netlify.app/web-table.html    chrome
    ${firstName}    Get Text    xpath=//table[@id="peopleTable"]/tbody/tr[1]/td[1]
    Log    ${firstName}
    ${lastName}    Get Text    xpath=//table[@id="peopleTable"]/tbody/tr[1]/td[2]
    Log    ${lastName}
    ${email}    Get Text    xpath=//table[@id="peopleTable"]/tbody/tr[1]/td[3]
    Log    ${email}
    Should Be Equal    ${firstName}    Mark
    Should Be Equal    ${lastName}     Otto
    Should Be Equal    ${email}        mo@email.com
    Close Browser