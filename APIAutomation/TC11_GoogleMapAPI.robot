*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}    https://maps.googleapis.com
${req_uri}  /maps/api/place/nearbysearch/json

*** Test Cases ***
GoogleMapPlacesAPITC

    [Documentation]    Google Map Places API Test Case
    [Tags]    GoogleMapAPI
    Create Session    my_session    ${base_url}
    ${params}  Create Dictionary  location=28.70454,77.1149  radius=500  type=food  name=harbour
    ${response}=   GET On Session    my_session    ${req_uri}    params=${params}    headers=Content-Type=application/json
    Log To Console  ${response.status_code}
    Log To Console  ${response.content}