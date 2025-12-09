*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Forloop1
    :FOR    ${i}    IN    RANGE    1    10        
    Log to console    ${i}

Forloop2
    :FOR    ${i}    IN    1    2    3    4    5    6    7    8    9    10
    Log to console    ${i}
       
Forloop3withList
     @{items}  Create List  1  2  3  4  5 
     :FOR  ${i}  IN  @{items}
    Log to console  ${i}  

Forloop4
    :FOR  ${i}  IN  john  kate  mike  sam  ron
    Log To Console  ${i}

Forloop5
    @{nameslist}    Create List    john    kate    mike    sam    ron
    :FOR    ${i}   IN    @{nameslist}
    Log To Console    ${i}

Forloop6withExit
    @{items}    Create List    1    2    3    4    5
    :FOR    ${i}    IN    @{items}
    Log To Console    ${i}
    Exit For Loop If    ${i} == 3