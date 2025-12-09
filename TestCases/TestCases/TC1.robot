*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/ 

*** Test Cases ***
LoginTest
   Open Browser   ${url}   ${browser} 
   Maximize Browser Window
   loginToApplication
   Close Browser
   
*** Keywords ***
loginToApplication   
     Click Link  xpath://a[@class='ico-login']
     Input Text  id:name  kamalesh1992rai@gmail.com
     Input Text  id:Password  Test@123
     Click Element  xpath://input[@class='button-1 login-button']