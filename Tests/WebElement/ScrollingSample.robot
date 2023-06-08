*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Case Scrolling
    Open Browser    https://qa-practice.netlify.app/scroll.html    chrome
    Maximize Browser Window
    # JS -> window.scrollTo(0,1000)
    # Execute Javascript    window.scrollTo(0,100000000)
    # Capture Page Screenshot
    # Scroll Element Into View -> Locator    //*[@id="the-end"]
    # Scroll Element Into View    //*[@id="the-end"]
    # Page Should Contain    THE END
    # Capture Page Screenshot
    # JS -> window.scrollTo(0,document.body.scrollHeight) untuk scroll ke paling bawah
    Execute Javascript     window.scrollTo(0,document.body.scrollHeight)
    Capture Page Screenshot
    Sleep    2
    # JS -> window.scrollTo(0,-document.body.scrollHeight) untuk scroll ke paling atas
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Capture Page Screenshot
    Close Browser