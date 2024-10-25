*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC025_validate_text_on_element
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Title Should Be  Login & Sign Up Forms