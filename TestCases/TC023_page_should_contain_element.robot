*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}  http://www.thetestingworld.com

*** Test Cases ***
TC023_page_should_contain_element
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Click Element  xpath://*[@id="ja-search"]/ul/li/a
    Page Should Contain Textfield  name:wdform_1_element_first2
    Input Text  name:wdform_1_element_first2  kamlesh1992