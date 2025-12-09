*** Settings ***
Library  SeleniumLibrary

*** Test Cases *
Text Box
   Open Browser  https://www.tutorialspoint.com/selenium/practice/text-box.php  Chrome
   Maximize Browser Window
   Set Selenium Speed    1
   Input Text    id=fullname    kamlesh rai
   Input Text    xpath=//*[@id="email"]    kamaall1563y@gmail
   Input Text    id=address    rohini sec 7
   Input Text    id=password    123456
   Sleep  2
   Click Button    Submit



*** Keywords ***
for loop
    FOR    ${element}    IN    @{1,2,3,4,5}
        Log    ${element}

    END