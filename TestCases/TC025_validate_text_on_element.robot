*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC025_validate_text_on_element
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Element Text Should Be  xpath://*[@id="tab-content1"]/p  Register now and kick start your career as a Software Testing Pro!
    Input Text  name:fld_username  kamlesh1992rai