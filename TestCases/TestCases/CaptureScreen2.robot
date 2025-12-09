*** Settings ***


*** Test Cases ***
CaptureScreen2
    Open Browser  https://opensource-demo.orangehrmlive.com/  chrome
    Maximize Browser Window

    Input Text  name:txtUsername  Admin
    Input Text  name:txtPassword  1234

    Capture Element Screenshot  xpath://*[@id="divLogo"]/img  C:/Users/admin/PycharmProjectts/RobotAutomation/Snapshots/logo.png

    Capture Page Screenshot   C:/Users/admin/PycharmProjectts/RobotAutomation/Snapshots/LoginTC.png