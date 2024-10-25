
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}   http://www.thetestingworld.com/testings

*** Test Cases ***
Robot second test case
    Open Browser  ${URL}     ${Browser}
    Maximize Browser Window
    Set Selenium Speed  2seconds
    Input Text  name:fld_username  TestingWorld
    Input Text  name:fld_email  kamalesh1992rai@gmail.com
    Input Text  name:fld_password  61342997
    Input Text  name:fld_cpassword  61452997
    
    Select Radio Button  add_type  office
    Select From List By Index  name:sex  2
    Select Checkbox  name:terms
    Click Link  xpath://*[@id="tab-content1"]/form/div/em/a
    Close Browser
    