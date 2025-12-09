*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  file:///D:/html%20page/registration-from.html
${speed}=   get selenium speed

*** Test Cases ***
setting selenium speed
   Open Browser   ${url}   ${browser}  
   Maximize Browser Window

   ${time}=  Get Selenium Timeout
   Log To Console  ${time}
   
   Set Selenium Timeout  10 seconds

   Wait Until Page Contains  Email

   Input Text  name:email  kamalesh1992rai@gmail.com
   Input Text  name:password  1234567
   Select Radio Button  gender  female
  