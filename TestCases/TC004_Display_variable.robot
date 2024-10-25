*** Settings ***
Library  SeleniumLibrary
Library  collections


*** Variables ***


*** Test Cases ***
TC004 Variable Test
     ${Var1}=   set variable  HelloWorld
     Log To Console  ${Var1}


*** Keywords ***
