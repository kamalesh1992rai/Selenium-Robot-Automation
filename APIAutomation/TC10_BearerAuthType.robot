*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem

*** Variables ***
${base_url}    https://certtransaction.elementexpress.com
${bearer_token}    "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"


*** Test Cases ***
BearerAuthTest
    [Documentation]    Bearer Authentication Test Case
    [Tags]    BearerAuth
    Create Session    my_session    ${base_url}    
    ${headers}=    Create Dictionary    Authorization=${bearer_token}  Content-Type=text/xml
    ${req_body}=    Get File    C:/Users/kamal/PycharmProjects/RobotAutomation/APIAutomation/TC6_XML.xml

    ${response}=   POST On Session    my_session    /    data=${req_body}    headers=${headers}
    Log To Console  ${response.status_code}
    Log To Console  ${response.content}
