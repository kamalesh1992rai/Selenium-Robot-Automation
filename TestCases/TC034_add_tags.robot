*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/testsuite.robot
Documentation  This file having testcase of testing ABC functionallity
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window
Suite Setup   Before Each Test Suite
Suite Teardown  After Each Test Suite



*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetesingworld.com/testings



*** Test Cases ***
Robot First Test Case
    [Tags]  Smoke
    Input Text  name:fld_username  Testing
    Input Text  name:fld_email  kamalesh1992rai@gmail.com
    Input Text  name:fld_password  123456

Robot Next Test case
    [Tags]  Smoke Sanity
    Select Radio Button  add_type  office    