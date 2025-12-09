*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${BASE_URL}  https://jsonplaceholder.typicode.com
${ENDPOINT}  /posts

*** Test Cases ***
GET Request Test
    [Documentation]  This test case performs a GET request to the JSONPlaceholder API.
    [Tags]  api  get
    Create Session  jsonplaceholder  ${BASE_URL}
    ${response}=  GET On Session  jsonplaceholder  ${ENDPOINT}
    Should Be Equal As Strings  ${response.status_code}  200
    Log To Console  ${response.json()}
    Log To Console  ${response.status_code}
    Log To Console  ${response.content}
    Log To Console  ${response.headers}

    # Validate Response
    ${status_code}=   Convert To String  ${response.status_code}
    Should Be Equal As Strings  ${status_code}  200


    ${body}=  Convert To String  ${response.content}
    Should Contain  ${body}  "userId"

    ${contentTypeValue}=  Get From Dictionary  ${response.headers}  content-Type
    Should Be Equal  ${contentTypeValue}  application/json; charset=utf-8
    