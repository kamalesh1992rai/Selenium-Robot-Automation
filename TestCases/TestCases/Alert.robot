*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
HandlingAlerts
    Open Browser  https://testautomationpractice.blogspot.com/  chrome
    Maximize Browser Window
    Click Element  xpath://*[@id="HTML9"]/div[1]/button
    Sleep  3
    Handle Alert  accept
    Alert Should Be Present  Press a button

HandlingMultipleAlerts
    Open Browser  https://testautomationpractice.blogspot.com/  chrome
    Maximize Browser Window
    Click Element  xpath://*[@id="HTML9"]/div[1]/button
    Sleep  3
    Handle Alert  accept
    Alert Should Be Present  Press a button

    # Assuming another alert appears after handling the first one
    Click Element  xpath://*[@id="HTML9"]/div[1]/button
    Sleep  3
    Handle Alert  dismiss
    Alert Should Be Present  Press a button
