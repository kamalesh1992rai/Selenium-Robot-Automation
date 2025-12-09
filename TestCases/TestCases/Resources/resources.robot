*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot

*** Variables ***
${url}  http://www.newtours.demoaut.com/\
${Browser}  Chrome

*** Test Cases ***
TC!
    ${PageTitle}=    launchBrowser  ${url}  ${Browser}
    Log To Console  ${PageTitle}
    Log  ${PageTitle}
    Input Text  name=userName  mercury
    Input Text  name=password  mercury