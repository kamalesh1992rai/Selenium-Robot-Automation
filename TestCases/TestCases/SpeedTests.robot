*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  file:///D:/html%20page/registration-from.html
${speed}=   get selenium speed

*** Test Cases ***
Geting selenium speed
   ${speed}=   Get Selenium Speed
   Log To Console  ${speed}
   Open Browser   ${url}   ${browser}  ${speed}
   Maximize Browser Window
   # Sleep  5
   Set Selenium Speed  2
   Input Text  name:full_name  Kamlesh kumar rai
   Input Text  name:email  kamalesh1992rai@gmail.com
   Input Text  name:password  1234567
   Select Radio Button  gender  female
   ${speed}=   Get Selenium Speed
   Log To Console  ${speed}
   
