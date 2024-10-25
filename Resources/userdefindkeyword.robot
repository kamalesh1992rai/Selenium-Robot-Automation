*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Start Browser and Maximize
    [Documentation]  This keyword is for start browser and maximize its window
    [Arguments]  ${UserURL}  ${InputBrowser}
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    ${Title}=  Get Title
    RETURN  ${Title}
