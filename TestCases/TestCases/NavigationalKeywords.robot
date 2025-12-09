*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
NavigationalKeywords
    Open Browser  https://www.google.com  chrome
    Maximize Browser Window
    Sleep  3
    ${loc}=  Get Location
    Log To Console  ${loc}
    Sleep  3
    Go To  https://www.bing.com/
    ${loc}=  Get Location
    Log To Console  ${loc}
    Sleep  3
    Go Back  
    ${loc}=  Get Location
    Log To Console  ${loc}
    Sleep  3
    Close Browser

