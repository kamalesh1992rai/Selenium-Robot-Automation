*** Settings ***
Library  SikuliLibrary  mode=NEW


*** Variables ***




*** Test Cases ***
TC002_ Start Browser on Windows
    Start Sikuli Process
    Add Image Path  C:\Users\kamal\OneDrive\Pictures\Screenshots
    Click  start.png
    Input Text  SearchBox.png  notepad
    Wait Until Screen Contain  Notepad.png  10
    Click  Notepad.png
    Input Text  NotepadTextAre.png  kya hal hai