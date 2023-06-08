# //*[@id="username"]
# //*[@id="password"]
# //*[@id="loginbtn"]

*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Test Get Element Attribute
    Open Browser    
    ...    https://vica.enigmacamp.com/login/index.php    
    ...    chrome
    ${attributeValue}=    
    ...    Get Element Attribute    
    ...    //*[@id="username"]    
    ...    placeholder
    Log    
    ...    ${attributeValue}
    Close Browser

Test Get Element Count
    Open Browser    
    ...    https://vica.enigmacamp.com/login/index.php    
    ...    chrome
    ${count}=    
    ...    Get Element Count    
    ...    //input[@type="text"]    
    Log    
    ...    ${count}
    Close Browser