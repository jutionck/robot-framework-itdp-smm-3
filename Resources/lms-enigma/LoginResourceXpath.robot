*** Settings ***
Library      SeleniumLibrary
Variables    ../../PageObject/Locators/Locator.py

*** Keywords ***
Open My Browser
    [Arguments]       ${URL}    ${BROWSER}   
    Open Browser      ${URL}    ${BROWSER}  

Input Username Credentials
    [Arguments]       ${USERNAME}
    Input Text        ${txtUsernameInputXpath}       ${USERNAME}

Input Password Credentials
    [Arguments]       ${PASSWORD}
    Input Password    ${txtPasswordInputXpath}       ${PASSWORD}

Select My Checbox
    Select Checkbox   ${txtRememberUsernameXpath}

Click Button Login
    Click Button      ${txtLoginButtonXpath}

Capture My Browser
    Capture Page Screenshot

Close My Browser
    Close Browser

Get Text Use Wait Until Page Contains
    [Arguments]    ${VALUE}
    Wait Until Page Contains    ${VALUE}