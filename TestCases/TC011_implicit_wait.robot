*** Settings ***

Library  selenium_library
Library    SeleniumLibrary

*** Test Cases ***
TC011 validate login and logout
  Open Browser  http://www.thetestingworld.com/testings  Chrome
  Maximize Browser Window
  Log To Console  ${default_T}
  Set Selenium Implicit Wait  20 seconds
  ${default_T}=  Get Selenium Implicit Wait
  Input Text  name:fld_username  TestingWorld
  Input Text  name:fld_email  kamalesh1992rai@gmail.com
  Input Text  name:fld_password  61342997
  Input Text  name:fld_cpassword  61452997