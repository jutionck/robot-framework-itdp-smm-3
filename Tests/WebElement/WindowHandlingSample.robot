*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case Window Handling
    Open Browser    
    ...    https://qa-practice.netlify.app/tab.html    
    ...    chrome
    ${WINDOW_TILE}=    Get Window Titles
    Log    ${WINDOW_TILE}
    Click Button    
    ...    //*[@id="newTabBtn"]
    Switch Window    
    ...    url=https://qa-practice.netlify.app/web-table.html
    Capture Page Screenshot
    Page Should Contain    
    ...    Table Example
    Close Window
    Switch Window    
    ...    url=https://qa-practice.netlify.app/tab.html
    Capture Page Screenshot
    Page Should Contain    
    ...    Switch to a new Browser Tab
    Close Browser