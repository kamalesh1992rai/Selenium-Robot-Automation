*** Settings ***


Library    SeleniumLibrary

*** Variables ***
${var1}  http://www.thetestingworld.com

*** Test Cases ***
TC015 Validate Login and Logout
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Set Selenium Speed  10 seconds
    Wait Until Page Contains  VIDEOS
    Click Element  xpath://*[@id="menu499"]/span
    Wait Until Page Contains  xpath
    
