*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}   http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    ${PageTitle}=  Get Title
    Log  ${PageTitle}
    ${Speed}=  Get Selenium Speed
    Log  ${Speed}
    ${Value}=  Get Value  xpath://input[@type='submit']
    Log  ${Value}
    ${Text}=  Get Text  xpath://a[@class='displayPopup']
    Log  ${Text}