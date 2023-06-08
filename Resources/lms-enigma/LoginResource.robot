*** Settings ***
Library      SeleniumLibrary
Variables    ../../PageObject/Locators/Locator.py

*** Keywords ***
Open My Browser
    [Arguments]       ${URL}    ${BROWSER}   
    Open Browser      ${URL}    ${BROWSER}  

Input Valid Username
    [Arguments]       ${USERNAME}
    Input Text        ${txtUsernameInput}       ${USERNAME}

Input Valid Password
    [Arguments]       ${PASSWORD}
    Input Password    ${txtPasswordInput}       ${PASSWORD}

Click Button Login
    Click Button      ${txtLoginButton}

Capture My Browser
    Capture Page Screenshot

Close My Browser
    Close Browser