*** Settings ***
Library    XML
Library    os
Library    Collections
Library   RequestsLibrary


*** Variables ***
${base_url}    http://thomas-bayer.com


*** Test Cases ***
TestCase1
    Create Session    my_session    ${base_url}
    ${response}=   GET On Session    my_session    /sqlrest/CUSTOMER/15
    ${xml_string}=  Convert To String  ${response.content}
    ${xml_obj}=   Parse Xml   ${xml_string}

    #check single element value
    Element Text Should Be  ${xml_obj}  John Doe  ..//CUSTOMER/FIRSTNAME


    #check multiple values
    ${child_Elements}=  Get Child Elements  ${xml_obj}  
    Should Not Be Empty  ${child_Elements}

    ${id}=  Get Element Text  ${child_Elements[0]}
    ${firstname}=  Get Element Text  ${child_Elements[1]}
    ${lastname}=  Get Element Text  ${child_Elements[2]}
    ${street}=  Get Element Text  ${child_Elements[3]}
    ${city}=  Get Element Text  ${child_Elements[4]}

    Should Be Equal  ${id}  15
    Should Be Equal  ${firstname}  John
    Should Be Equal  ${lastname}  Doe    
    Should Be Equal  ${street}  5th Avenue
    Should Be Equal  ${city}  New York