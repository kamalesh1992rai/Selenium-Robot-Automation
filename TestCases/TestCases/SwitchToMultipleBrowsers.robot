*** Settings ***
Library   SeleniumLibrary


*** Test Cases ***
MultipleBrowserTest
    Open Browser  https://www.google.com  firefox
    Maximize Browser Window
    Sleep  3

    Open Browser  https://www.selenium.dev  firefox
    Maximize Browser Window

    Switch Browser  1
    ${title}=  Get Title
    Log To Console  ${title}

    Switch Browser  2
    ${title2}=  Get Title
    Log To Console  ${title2}

    Sleep  3
    Close All Browsers