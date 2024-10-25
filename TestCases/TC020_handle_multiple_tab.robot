*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}  http://www.robotframework.org/
${var2}  http://www.google.com

*** Test Cases ***
TC020 Validate Login and Logout
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Click Element  //*[@id="app"]/div[4]/div[1]/div[1]/div/p[1]/a[1]
    @{list1}  get window handles
    FOR  ${vin}  IN  ${list1}
    \  select window  ${vin}
    \  ${url}=  get locaton
    \  log to console ${url}
    
    END
    
    
    
    
