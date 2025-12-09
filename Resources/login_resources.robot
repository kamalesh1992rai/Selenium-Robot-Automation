*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${LOGIN URL}  https://admin-demo.nopcommerce.com
${BROWSER}  Chrome

*** Test Cases ***
Open my Browser
    Open Browser  ${LOGIN URL}  ${BROWSER}
    Maximize Browser Window

 close Browsers
    Close All Browsers

Open Login Page
    [Arguments]  ${username}
    Input Text  id=Email  ${username}

Input pwd
    [Arguments]  ${password}
    Input Text  id=Password  ${password}

click login button
    Click Element  xpath=//input[@class='button-1 login-button']

click logout button
    Click Link  Logout

Error message should be visible
    Page Should Contain  Login was unsuccessful

Dashboard page should be visible
    Page Should Contain  Dashboard