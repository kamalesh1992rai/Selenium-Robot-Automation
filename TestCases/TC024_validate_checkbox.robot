*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC023_page_should_contain_element
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Click Element  xpath://*[@id="tab-content1"]/form/div/input[1]
    Select Checkbox  name:terms
    Checkbox Should Be Selected  name:terms
    Sleep  10 seconds
    Click Element  name:terms
    Checkbox Should Not Be Selected  name:terms