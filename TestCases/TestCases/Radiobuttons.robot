*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  file:///D:/html%20page/practice=form.html

*** Test Cases ***
Testing Radio Buttons and check Boxes
   Open Browser   ${url}   chrome
   Maximize Browser Window

   #Selecting input text
   Input Text  id:name  kamalesh kumar rai
   Input Text  id:email  kamalesh1992rai@gmail.com
   Input Text  id:password  123456

   Input Text  id:phone  7903090370

   #Selecting Radio Butoons 
   Select Radio Button  gender  male
   Select Checkbox  reading
   

