*** Settings ***
Library  SeleniumLibrary
Library    ../ExternalKeywords/Locators.py

*** Variables ***
${Browser}  Chrome
${URL}   http://www.thetestingworld.com/testings

*** Test Cases ***
Robot first test case
    [Tags]  Smoke
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    ${username}=  Read Element Locator  Registration.username_textbox_name
    Input Text  name:${username}  Testing
    ${password}=  Read Element Locator  Registration.password_textbox_name
    Input Text  name:${password}  12345

    ${email}=  Read Element Locator  Registration.email_textbox_name
     Input Text  name:${email}  kamalesh1992rai@gmail.com


Robot Next Test Case
    Select Radio Button  add_type  office   

*** Keywords ***
Read Element Locator
     [Arguments]  ${JsonPath}
     ${result}=  read_locator_from_json  ${JsonPath}  
     RETURN  ${result}   