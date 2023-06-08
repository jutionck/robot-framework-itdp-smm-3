*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://qa-practice.netlify.app/alerts.html
${BROWSER}    chrome
${BTN_ALERT_PATH}      //*[@id="alert-btn"]
${BTN_CONFIRM_PATH}    //*[@id="confirm-btn"]

*** Test Cases ***
Test Case Alert Handling
    Open Browser    
    ...    ${URL}    
    ...    ${BROWSER}
    Maximize Browser Window
    Click Element    
    ...    ${BTN_ALERT_PATH}
    ${TITLE}=    
    ...    Handle Alert
    Should Be Equal    
    ...    ${TITLE}    
    ...    Hello! I am an alert box!!
    Log    
    ...    ${TITLE}
    Close Browser

Test Case Alert Confirm Handling
    Open Browser    
    ...    ${URL}    
    ...    ${BROWSER}
    Maximize Browser Window
    Click Element    
    ...    ${BTN_CONFIRM_PATH}
    ${TITLE}=    
    ...    Handle Alert    
    ...    action=ACCEPT
    Should Be Equal    
    ...    ${TITLE}    
    ...    Press a button! Either OK or Cancel.
    Log    
    ...    ${TITLE}
    Click Element    
    ...    ${BTN_CONFIRM_PATH}
    ${TITLE}=    
    ...    Handle Alert    
    ...    action=DISMISS
    Close Browser

Test Case Alert Prompt Handling
    Open Browser    
    ...    https://the-internet.herokuapp.com/javascript_alerts
    ...    chrome
    Click Element    
    ...    css:li:nth-child(3) > button
    ${TITLE}=    
    ...    Handle Alert    
    Log    ${TITLE}
    Click Element    
    ...    css:li:nth-child(3) > button
    Input Text Into Alert    
    ...    Enigma Camp    
    Element Text Should Be    
    ...    //*[@id="result"]    
    ...    You entered: Enigma Camp
    Click Element    
    ...    css:li:nth-child(3) > button
    Input Text Into Alert    
    ...    Enigma Camp   
    ...    action=DISMISS 
    Element Text Should Be    
    ...    //*[@id="result"]    
    ...    You entered: null
    Close Browser