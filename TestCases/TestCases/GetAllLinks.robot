*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    Open Browser  https://www.google.com/  chrome
    Maximize Browser Window
    @{AlllinksCount}=    Get Element Count  xpath://a  
    Log To Console  ${AlllinksCount}
   

   @{LinkItems}    Create List

   :FOR    ${i}    IN RANGE    1    ${AlllinksCount}
    \    ${Link}=    Get Element Attribute    xpath://a[${i}]@href
    \    log to console  ${LinkText}