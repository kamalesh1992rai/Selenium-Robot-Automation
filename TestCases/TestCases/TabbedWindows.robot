*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.selenium.dev
${NEW_TAB_URL}    https://www.google.com

*** Test Cases ***
Handle Tabbed Windows
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Set Selenium Speed    3
    ${main_tab}=    Get Window Handles

    # Open a new tab using JavaScript
    Execute JavaScript    window.open("${NEW_TAB_URL}");
    ${all_tabs}=    Get Window Handles

    # Switch to the new tab
    Switch Window    handle=${all_tabs}[1]
    Location Should Be    ${NEW_TAB_URL}

    # Perform actions in the new tab
    Title Should Be    Google

    # Switch back to the main tab
    Switch Window    handle=${main_tab}
    Location Should Be    ${URL}

    # Close the new tab
    Switch Window    handle=${all_tabs}[1]
    Close Window

    # Verify only the main tab is open
    ${remaining_tabs}=    Get Window Handles
    Length Should Be    ${remaining_tabs}    1

    Close Browser

    
