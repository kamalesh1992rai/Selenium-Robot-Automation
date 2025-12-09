*** Settings ***
Library    XML
Library    os
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
TestCase1
    ${xml_obj}=   Parse Xml   C:/Users/kamal/PycharmProjects/RobotAutomation/APIAutomation/TC6_XML.xml

    #validations

    #val1- check the single element value

    #Approach1
    ${emp_firstname}=  Get Element Text   ${xml_obj}   .//employee[1]/name
    Should Be Equal  ${emp_firstname}  John Doe

    #Approach2
    ${emp_firstname}=  Get Element Text   ${xml_obj}   .//employee[1]/name
    Should Be Equal  ${emp_firstname.text}  John Doe

    #Approach3
    Element Text Should Be  ${xml_obj}  john  ..//employee[1]/name  

    #val2- check Number of elements
    ${count}=  Get Element Count  ${xml_obj}  .//employee[1]/name
    Should Be Equal  ${count}  3






