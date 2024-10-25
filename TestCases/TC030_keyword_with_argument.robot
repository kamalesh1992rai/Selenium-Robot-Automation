*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/Resources2.robot


*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC029_keyword_without_argument
    Start Browser and Maximize  ${URL}  ${Browser}
    Input Text  name:fld_username  Helloworld
    