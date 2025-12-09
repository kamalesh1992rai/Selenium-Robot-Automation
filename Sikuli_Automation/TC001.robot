*** Settings ***
Library  SikuliLibrary  mode=NEW


*** Variables ***




*** Test Cases ***
TC001_ Start Browser on Windows
    Start Sikuli Process
    Add Image Path  C:\Users\kamal\OneDrive\Pictures\Screenshots
    Click  start.png
    Click  image=googlechrome.png
    Input Text  URLArea.png  http://thetestingworld.com/testings