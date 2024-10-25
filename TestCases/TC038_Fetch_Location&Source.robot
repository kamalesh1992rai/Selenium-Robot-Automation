*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}   http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    ${ActualURL}=  Get Location
    Log  ${ActualURL}
    ${PageHTML}=  Get Source
    Log  ${ActualURL}
    ${Attr}=  Get Element Attribute  name:fld_username  class
    Log  ${Attr}
    ${cnt}=  Get Element Count  class:field
    Log  ${cnt}
