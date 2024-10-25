*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/UserdefinedKeyword2.robot


*** Variables ***

*** Test Cases ***
Test Case in BDD Format
    Given Start Browser and Maximize
    when Create Folder at Runtime  ABCD  XYZM
    Then Concatenate Username and password  Testing  World

