*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Volunteer Sign Up Test
    Open Browser   
    ...    https://testautomationpractice.blogspot.com    
    ...    chrome
    Sleep    3s
    ${count}=    
    ...    Get Element Count    
    ...    //input[@type="text"]    
    Log    
    ...    ${count}