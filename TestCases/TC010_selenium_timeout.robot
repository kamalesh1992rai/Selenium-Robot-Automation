*** Settings ***


Library    SeleniumLibrary

*** Test Cases ***
TC007 Validate Login and Logout
    Open Browser  http://www.thetestingworld.com/testings  Chrome
    Maximize Browser Window
    ${tm}=  Get Selenium Timeout
    Log To Console  ${tm}
    Input Text  name:fld_username  TestingWorld
    Input Text  name:fld_email  kamalesh1992rai@gmail.com
    Input Text  name:fld_password  61342997
    Input Text  name:fld_cpassword  61452997
    Close Browser
    