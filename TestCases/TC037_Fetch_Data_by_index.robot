*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}   http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Select From List By Index  name:sex  1
    ${Val}=  Get Selected List Value  name:sex
    Log  ${Val}
    ${Text}=  Get Selected List Label  name:sex
    Log  ${Text}
    ${AllLabels}=  Get List Items  name:sex
    Log  ${AllLabels}