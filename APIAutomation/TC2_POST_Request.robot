*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${BASE_URL}  https://jsonplaceholder.typicode.com

*** Test Cases ***
POST Request Test
    [Documentation]  This test case performs a POST request to the JSONPlaceholder API.
    Create Session  jsonplaceholder  ${BASE_URL}
    ${body}=  Create Dictionary  FirstName=John  LastName=Doe  Age=30
    ${headers}=  Create Dictionary  Content-Type=application/json
    ${response}=  POST On Session  jsonplaceholder  /posts  json=${body}  headers=${headers}
    Log To Console  ${response.status_code}
    Log To Console  ${response.json()}
    Log To Console  ${response.content}

    # Validate Response
    