*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Case Radio Button
    Open Browser    https://qa-practice.netlify.app/radiobuttons.html    chrome
    Maximize Browser Window
    Wait Until Page Contains    Radio buttons
    Click Element    //*[@id="radio-button1"]
    # Select Radio Button    group_name    id/value
    Select Radio Button    materialExampleRadios    radio-button1
    Capture Page Screenshot
    Close Browser