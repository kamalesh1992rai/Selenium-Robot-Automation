*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}    http://restapi.demoqa.com


*** Test Cases ***
BasicAuthTest
    [Documentation]    Basic Authentication Test Case
    [Tags]    BasicAuth
    Create Session    my_session    ${base_url}    auth=${auth}
    ${response}=   GET On Session    my_session    /protected/resource
    Log To Console  ${response.status_code}
    Should Be Equal As Integers  ${response.status_code}  200