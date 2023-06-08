*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}            https://qa-practice.netlify.app/dynamic-table.html
${BROWSER}        chrome
${TABLE_PATH}     //*[@id="data-table"]

*** Test Cases ***
Test Case Dynamic Table
    [Tags]    Smoke
    Open Browser    ${URL}               ${BROWSER}
    Wait Until Element Is Visible        ${TABLE_PATH}
    ${ROW_COUNT}=   Get Element Count    ${TABLE_PATH}/tbody/tr
    Log  ${ROW_COUNT}  level=INFO
    FOR  ${ROW_INDEX}  IN RANGE     1    ${ROW_COUNT}
        ${firstName}=    Get Text    ${TABLE_PATH}/tbody/tr[${ROW_INDEX}]/td[2]
        ${lastName}=     Get Text    ${TABLE_PATH}/tbody/tr[${ROW_INDEX}]/td[3]
        ${age}=          Get Text    ${TABLE_PATH}/tbody/tr[${ROW_INDEX}]/td[4]
        ${email}=        Get Text    ${TABLE_PATH}/tbody/tr[${ROW_INDEX}]/td[5]
        ${city}=         Get Text    ${TABLE_PATH}/tbody/tr[${ROW_INDEX}]/td[6]
        ${country}=      Get Text    ${TABLE_PATH}/tbody/tr[${ROW_INDEX}]/td[7]
        Log Many         
        ...    ${firstName}    
        ...    ${lastName}    
        ...    ${age}    
        ...    ${email}    
        ...    ${city}    
        ...    ${country}
    END
    Close Browser

Test Others
    [Tags]    Regression
    Log    Regression Test