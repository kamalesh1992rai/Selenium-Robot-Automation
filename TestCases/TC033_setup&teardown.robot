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
    Input Text  name:fld_username  Testing
    Input Text  name:fld_email  kamalesh1992rai@gmail.com
    Input Text  name:fld_password  123456

Robot Next Test case
    Select Radio Button  add_type  office    