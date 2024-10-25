*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC025_validate_text_on_element
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    #Element Should Be Visible  name:fld_username
    Element Should Not Be Visible  name:fld_username