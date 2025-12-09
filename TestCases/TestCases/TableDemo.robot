*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TableValidations
    Open Browser  https://testautomation.blogspot.com/  chrome
    Maximize Browser Window
    ${rows}=    Get WebElements    xpath://table[@name='BookTable1']/tbody/tr
    ${cols}=    Get WebElements    xpath://table[@name='BookTable']/tbody/tr[1]/td

    Log To Console  ${rows}
    Log To Console  ${cols}

    ${data}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[1]/td[1]
    Log To Console  ${data}

    Table Column Should Contain    xpath://table[@name='BookTable']   2   Author
    Table Row Should Contain    xpath://table[@name='BookTable']   4   Learn  JS
    Table Cell Should Contain    xpath://table[@name='BookTable']   5  2  Mukesh
    Table Header Should Contain    xpath://table[@name='BookTable']   1   Book Name
    Close Browser