*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/lms-enigma/LoginResourceXpath.robot

*** Variables ***
${URL}               https://vica.enigmacamp.com/login/index.php
${BROWSER}           chrome
${USERNAME}          jutionck
${PASSWORD}          P@ssw0rd
${EXPECTED_VALUE}    Invalid login, please try again
${ACTUAL_VALUE}      Invalid login, please try againsssss
    
*** Test Cases ***
Test Case Invalid Credential LMS Enigma
    [Tags]    Regression
    Open My Browser    ${URL}    ${BROWSER}
    Input Username Credentials    ${USERNAME}
    Input Password Credentials    ${PASSWORD}
    Click Button Login
    # Informasi salah login
    Get Text Use Wait Until Page Contains    ${EXPECTED_VALUE}
    # Assertion
    Should Be Equal    ${EXPECTED_VALUE}    ${ACTUAL_VALUE}
    Capture My Browser
    Close My Browser