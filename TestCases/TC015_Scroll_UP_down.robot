*** Settings ***


Library    SeleniumLibrary

*** Variables ***
${var1}  http://www.thetestingworld.com

*** Test Cases ***
TC015 Validate Login and Logout
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Sleep  10 seconds
    Execute Javascript  window.scrollBy(0, 2000);
    Sleep  10 seconds
    Close Browser