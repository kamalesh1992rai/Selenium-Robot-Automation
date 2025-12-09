*** Settings ***
Library    JSONLibrary
Library    os
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}  https://restcountries.eu

*** Test Cases ***
Get_countryInfo:
    [Documentation]  Get country information by name
    [Tags]  API  JSON  GET
    Create Session  mysession  ${base_url}
    ${response}=  GET On Session  mysession  /rest/v2/name/USA
    Log To Console  ${response.status_code}
    Log To Console  ${response.content}

    # Validate Response
    ${status_code}=  Convert To String  ${response.status_code}
    Should Be Equal As Strings  ${status_code}  200

    # Validate JSON structure
    ${json_obj}=  Load Json From String  ${response.content}
    Should Not Be Empty  ${json_obj}