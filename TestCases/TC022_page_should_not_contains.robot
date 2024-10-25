*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}  http://www.thetestingworld.com

*** Test Cases ***
TC022_Page_should_not_contains
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Page Should Not Contain  VIDEOS11
    Click Element  xpath://*[@id="ja-search"]/ul/li/a