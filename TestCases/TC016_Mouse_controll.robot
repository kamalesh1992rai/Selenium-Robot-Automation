*** Settings ***


Library    SeleniumLibrary

*** Variables ***
${var1}  http://www.thetestingworld.com

*** Test Cases ***
TC015 Validate Login and Logout
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Sleep  10 seconds
    #Open Context Menu  xpath://*[@id="menu499"]/span
    #Double Click Element  xpath://a[text()='Login']
    #Sleep  10 seconds
    Mouse Over  xpath://*[@id="menu499"]/span
    Sleep  10 seconds
    