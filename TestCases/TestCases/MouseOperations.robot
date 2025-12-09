*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MouseActions
    [Documentation]  Test right-click and open context menu
    Open Browser  https://swisnl.github.io/jQuery-contextMenu/demo.html  chrome
    Maximize Browser Window
    Open Context Menu  xpath://span[@class='context-menu-one btn btn-neutral']
    Sleep  3
    #Double click action 
    #Go To  https://testautomationschool.blogshot.com/
    #Maximize Browser Window
    #Double Click Element  xpath://button[contains(text(),'click me')]
    #Sleep  3

    #Drag and drop action
    Go To   https://www.globalsqa.com/demo-site/draganddrop/
    Maximize Browser Window
    Wait Until Element Is Visible  xpath=//*[@id="gallery"]/li[1]/img
    Drag And Drop   xpath=//*[@id="gallery"]/li[1]/img  xpath=//*[@id="trash"]


