*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}   http://www.thetestingworld.com/testings

*** Test Cases ***
Robot third test case
     Open Browser  ${URL}     ${Browser}
     Maximize Browser Window

*** Keywords ***
Enter Username Password Testing
     [Arguments]  ${usename}  ${email}  ${password}
     Input Text  name:fld_username  TestingWorld
     Input Text  name:fld_email  kamalesh1992rai@gmail.com
     Input Text  name:fld_password  61342997
     Input Text  name:fld_cpassword  61452997
     Close Browser
    