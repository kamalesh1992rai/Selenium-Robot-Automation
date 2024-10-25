*** Settings ***
Library  SeleniumLibrary
Library  collections

*** Variables ***



*** Test Cases ***
TC005 Variable Test
      @l{List1}   create list Hello 22 23.23  World  Abcd1234
      ${list_length}  Get Length  ${List1}
      Log To Console  ${list_length}
      ${list_data}=  Get From List    ${List1}    2



*** Keywords ***
