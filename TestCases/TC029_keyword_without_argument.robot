*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/Resources1.robot


*** Test Cases ***
TC029_keyword_without_argument
    Start Browser and Maximize
    Input Text  name:fld_username  Helloworld
    