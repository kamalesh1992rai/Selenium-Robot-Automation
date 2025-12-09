*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Handling Dropdowns and Lists
   Open Browser   file:///D:/html%20page/Drop-down%20&%20List-box.html   chrome
   Maximize Browser Window
   
   #selecting drop=down
   Select From List By Label  country  USA
   Sleep  5
   Select From List By Index  country  3
   Sleep  5
   Select From List By Value  country  canada

   #selecting list-box
   Select From List By Label  programming-languages  Java
   Sleep  5
   Select From List By Index  programming-languages  0
   Sleep  5
   Select From List By Value  programming-languages  csharp
   Sleep  5
   Unselect From List By Label  programming-languages  Java
   Sleep  5
   Unselect From List By Index  programming-languages  0
   Close All Browsers
   


