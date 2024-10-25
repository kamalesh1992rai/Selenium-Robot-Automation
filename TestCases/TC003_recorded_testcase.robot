*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}   http://www.thetestingworld.com/testings


*** Test Cases ***
TC_001
    Open Browser    https://www.thetestingworld.com/testings/    ${BROWSER}
    Input Text    //input[@name="fld_username"]    kamdx skdc
    Click Element    //form[@name="register"]
    Input Text    //input[@name="fld_email"]    kndcsodcnswd
    Input Text    //input[@name="fld_password"]    ***
    Click Link    xpath=(//a[@href="#"])[25]
    Input Text    //input[@name="phone"]    07903090370
    Input Text    //input[@name="address"]    Vill+post-bagar, Dist-bhojpur
    Select From List By Value    //select[@name="country"]    101
    Input Text    //input[@name="zip"]    802222