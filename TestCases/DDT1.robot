*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open my Browser
Suite Teardown  Close Browsers


*** Test Cases ***       username                 password
Right user empty pass  admin@yourstore.com  ${EMPTY}
Right user wrong pass  admin@yourstore.com  xyz
Wrong user right pass   adm@yourstore.com  admin
wrrong user empty pass   adm@yourstore.com  ${EMPTY}
wrong user wrong pass  adm@yourstore.com  xyz

*** Keywords ***
Invalid login
    [Arguments]  ${username}  ${password}
    Input username  ${username}
    Input pwd  ${password}
    click login button
    Error message should be visible