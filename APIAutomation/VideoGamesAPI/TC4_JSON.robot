*** Settings ***
Library    JSONLibrary
Library    os
Library    RequestsLibrary
Library    Collections    

*** Test Cases ***
Testcase1:
    ${json_obj}=  Load Json From File  C:/Users/kamal/PycharmProjects/RobotAutomation/APIAutomation/VideoGamesAPI/TCJSON.json
    ${name_value}=  Get Value From Json  ${json_obj}  $.Name
    Should Be Equal  ${name_value[0]}  John
    Log To Console  ${name_value[0]}

    ${street_value}=  Get Value From Json  ${json_obj}  $.address.street
    Should Be Equal  ${street_value[0]}  123 Main St
    Log To Console  ${street_value[0]}

    ${faxnumb_value}=  Get Value From Json  ${json_obj}  $.fax.home
    Should Be Equal  ${faxnumb_value[0]}  123-456-7890
    Log To Console  ${faxnumb_value[0]}
    
