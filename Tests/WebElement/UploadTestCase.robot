*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}             https://qa-practice.netlify.app/file-upload.html
${BROWSER}         chrome
${FILE_PATH}       /Users/jutioncandrakirana/Documents/GitHub/enigma/SQA/AUTOMATION/robotframework-course/uploads/jenkin-logo.png
${CHOOSE_PATH}     //*[@id="file_upload"]
${BUTTON_XPATH}    xpath=//button[@type='submit']

*** Test Cases ***
Upload test case
    Open Browser    ${URL}            ${BROWSER}
    Choose File     ${CHOOSE_PATH}    ${FILE_PATH}
    Click Button    ${BUTTON_XPATH}
    Capture Page Screenshot
    Close Browser