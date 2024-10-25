*** Settings ***


Library    SeleniumLibrary

*** Variables ***
${var1}  http://www.thetestingworld.com

*** Test Cases ***
TC014 Validate Login and Logout
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Sleep  5 seconds
    Go To  http://www.google.com
    Sleep  5 seconds
    Go Back
    Sleep  5 seconds
    Close Browser