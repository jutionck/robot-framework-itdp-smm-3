*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Select My Country    
    [Arguments]    ${VALUE}
    Select From List By Value    //*[@id="countries_dropdown_menu"]    ${VALUE}

Print Info Website
    ${result}    Set Variable    Website Sinar Harapan Makmur
    [Return]    ${result}