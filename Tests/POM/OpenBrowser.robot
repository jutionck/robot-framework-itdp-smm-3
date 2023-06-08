*** Settings ***  
Documentation   This is test case for Login LMS Enigma Camp
Resource        ../Resources/lms-enigma/LoginResourceXpath.robot

*** Variables ***
${MY_URL}        https://vica.enigmacamp.com/login/index.php
${BROWSER}    chrome
${USERNAME}   jution.kirana
${PASSWORD}   P@ssw0rd

*** Test Cases ***
Login LMS Enigma
    Open My Browser        ${MY_URL}        ${BROWSER}
    Input Username Credentials   ${USERNAME}
    Input Password Credentials   ${PASSWORD}
    Select My Checbox
    Click Button Login
    Capture My Browser
    Close My Browser
