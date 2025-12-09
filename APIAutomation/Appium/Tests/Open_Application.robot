*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PlatForm_Name}  platformName
${platForm_Version}  14
${automationName}  UIAutomator2

*** Test Cases ***
TC1 First Test Case
    [Documentation]  This is the first test case to open the application
    [Tags]  OpenApplication
    Open Application    http://192.168.173.26:4723  automationName=${automationName}  platformName=${PlatForm_Name}  platformVersion=${platForm_Version}  deviceName=Pixel 9 Pro XL API TiramisuPrivacySandbox  appPackage=com.android.calculator2  appActivity=.Calculator
