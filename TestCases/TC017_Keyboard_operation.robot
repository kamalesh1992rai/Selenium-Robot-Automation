*** Settings ***


Library    SeleniumLibrary

*** Variables ***
${var1}  http://www.thetestingworld.com

*** Test Cases ***
TC015 Validate Login and Logout
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Sleep  10 seconds
    Click Link  xpath://*[@id="ja-search"]/ul/li/a
    Press Key  name:wdform_1_element_first2  kamlesh
    Press Key  name:wdform_1_element_last2  Rai
    Press Key  name:wdform_2_element2  kamalesh1992rai@gmail.com
    Press Key  name:wdform_4_element2  7903090370
    Press Key  xpath://*[@id="2form_view1"]/div[1]/div/div[7]/div/div[2]/button[1]  \\13
