*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/testsuite.robot
Documentation  This file having testcase ABC functionality
Task Setup  Start Browser and Maximize
Task Teardown  Close Browser Window
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite
default tags  DFLT

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetesingworld.com/testings



*** Test Cases ***
Robot Second Test Case
    Input Text  name:fld_username  Testing
    Input Text  name:fld_email  kamalesh1992rai@gmail.com
    Input Text  name:fld_password  123456

Robot Second Next Test case
    Select Radio Button  add_type  office    