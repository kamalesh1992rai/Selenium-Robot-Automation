*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/UserKeywords.robot



*** Variables ***
${var1}  http://www.thetestingworld.com


*** Test Cases ***
TC_001 Login Logout Functionality
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Click Element  xpath://a[text()='Login']

    ${row}=  Read Number of rows  Sheet1

    : FOR  ${i}  IN RANGE  1  $(row)+1
    \  ${username}=  Read Excel Data of cell Sheet1 ${i}  1
    \  ${password}=  Read Excel Data of cell Sheet1 ${i}  2
    \  Input Text  id:username  ${username}
    \  Input Text  id:password  ${password}
    \  Click Button  xpath://button[@type='submit']
   
    Sleep  5 seconds
