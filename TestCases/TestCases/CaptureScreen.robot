*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
LoginTC
    Open Browser  https://opensource-demo.orangehrmlive.com/  chrome
    Maximize Browser Window

    Input Text    css:#txtUsername    Admin


    Input Text  name:password  1234

    Capture Element Screenshot  xpath://*[@id="divLogo"]/img  C:/Users/admin/PycharmProjectts/RobotAutomation/Snapshots/logo.png

    Capture Page Screenshot   C:/Users/admin/PycharmProjectts/RobotAutomation/Snapshots/LoginTC.png