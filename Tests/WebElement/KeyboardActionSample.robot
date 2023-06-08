*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Case Keyboard Action
    Open Browser    
    ...    https://qa-practice.netlify.app/login.html    
    ...    chrome
    Maximize Browser Window
    Input Text    
    ...    //*[@id="email"]    
    ...    admin@admin.com
    Press Keys    
    ...    //*[@id="email"]    
    ...    TAB
    Input Password    
    ...    //*[@id="password"]    
    ...    admin1234
    Press Keys    
    ...    //*[@id="password"]    
    ...    BACKSPACE
    Press Keys    
    ...    //*[@id="submitLoginBtn"]    
    ...    ENTER
    # //*[@id="message"]
    Page Should Contain    admin@admin.com, you have successfully logged in!
    Capture Page Screenshot
    Close Browser