*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser    file:///D:/html%20page/scrolltest.html    chrome
    Maximize Browser Window
    Sleep  3
    #Execute Javascript    window.scrollBy(0, 3000)
    #Scroll Element Into View    xpath:/html/body/div[2]/
    Execute Javascript   window.scrollTo(0, document.body.scrollHeight)
    Sleep  3
    Execute Javascript   window.scrollTo(0, -document.body.scrollHeight)
    Sleep  3
    Close All Browsers
