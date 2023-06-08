*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case Double Click
    Open Browser    https://qa-practice.netlify.app/double-click.html    chrome
    Double Click Element    //*[@id="double-click-btn"]
    Wait Until Page Contains    Congrats, you double clicked!
    Capture Page Screenshot
    Close Browser