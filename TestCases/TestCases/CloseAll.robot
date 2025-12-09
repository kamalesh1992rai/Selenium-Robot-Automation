*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  file:///D:/html%20page/registration-from.html

*** Test Cases ***
seting selenium speed
   Open Browser   ${url}   ${browser}  
   Maximize Browser Window

   Set Selenium Implicit Wait  10

   ${implicittime}=   Get Selenium Implicit Wait
   Log To Console  ${implicittime}


   Input Text  name:email  kamalesh1992rai@gmail.com
   Input Text  name:password  1234567
   Select Radio Button  gender  female