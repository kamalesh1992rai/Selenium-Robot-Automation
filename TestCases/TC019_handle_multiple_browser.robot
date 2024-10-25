*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}  http://www.thetestingworld.com
${var2}  http://www.google.com

*** Test Cases ***
TC019 Validate Login and Logout
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Open Browser  ${var2}  Chrome
    Maximize Browser Window
    Switch Browser  1
    ${url1}=  Get Location
    Log To Console  ${url1}
    Click Element  xpath://*[@id="ja-search"]/ul/li/a
    Switch Browser  2
    ${url2}=  Get Location
    Log To Console  ${url2}
    Input Text  name:wdform_1_element_first2  Helloworld

    
