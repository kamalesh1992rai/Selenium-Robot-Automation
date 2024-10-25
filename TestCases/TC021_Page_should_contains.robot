*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}  http://www.thetestingworld.com

*** Test Cases ***
TC021_Page_should_contains
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Page Should Contain  VIDEOS
    Click Element  xpath://*[@id="ja-search"]/ul/li/a