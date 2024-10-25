*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}   http://www.thetestingworld.com/testings


*** Test Cases ***
Robot Fetch Data
    Create Folder at Runtime  Hello21234  Testing

    Concatenate Username and password  Testing  World
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
