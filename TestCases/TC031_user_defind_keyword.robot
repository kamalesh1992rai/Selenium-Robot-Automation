*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/userdefindkeyword.robot

*** Variables ***
${Browser}  Chrome
${url}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC031_user_defind_keyword
   ${Res}=  Start Browser and Maximize  ${url}  ${Browser}
   Log  ${Res}
   Input Text  name:fld_username  ${Res}
