*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}    http://jsonplaceholder.typicode.com

*** Test Cases ***
TestHeaders

    Create Session    my_session    ${base_url}
    ${response}=   GET On Session    my_session    /photos
    Log To Console  ${response.headers}
    

    ${contentTypeValue}=  Get From Dictionary  ${response.headers}  Content-Type
    Should Be Equal  ${contentTypeValue}  application/json; charset=utf-8

    ${contentEncodeValue}=  Get From Dictionary  ${response.headers}  Content-Encoding
    Should Be Equal  ${contentEncodeValue}  gzip

 TestCookies

    Create Session    my_session    ${base_url}
    ${response}=   GET On Session    my_session    /photos
    Log To Console  ${response.cookies}
    
    ${cookieValue}=  Get From Dictionary  ${response.cookies}  sessionid
    Should Be Equal  ${cookieValue}  1234567890abcdefg   