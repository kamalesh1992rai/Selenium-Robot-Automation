*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/userdefindkeyword.robot
Documentation  This File having testcases of testing ABC functionality
Test Timeout  10s

*** Variables ***
${Browser}  Chrome
${url}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC032_add_documentattion
   [Documentation]  This test case is to check registration functionality of Application
   ${Res}=  Start Browser and Maximize  ${url}  ${Browser}
   Log  ${Res}
   Input Text  name:fld_username  ${Res}
