*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.newtours.demoaut.com/
${Browser}  Chrome

*** Test Cases ***
TC1
   ${PageTitle}=  launch browser  ${url}  ${Browser}
   Log To Console  ${PageTitle}
   Log  ${PageTitle}
   

*** Keywords ***
launch browser
    [Arguments]  ${appurl}  ${appbrowser}
    Open Browser  ${appurl}  ${appbrowser}
    Maximize Browser Window
    ${title}=  Get Title
    RETURN  ${title}