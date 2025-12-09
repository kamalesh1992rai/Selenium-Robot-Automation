*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}   http://www.thetestingworld.com

*** Test Cases ***
TC003 Login Logout Functionality
   Open Browser  ${var1}  Chrome
   Maximize Browser Window
   Click Link  xpath://*[@id="ja-search"]/ul/li/a
   Input Text  name:"wdform_1_element_first2"  Hello
   Press Key  xpath://*[@id="2form_view1"]/div[1]/div/div[7]/div/div[2]/button[1]  \\13