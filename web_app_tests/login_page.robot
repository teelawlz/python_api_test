*** Settings ***
Documentation     Login Test for redfin.com
...
Resource          resource.robot
# Library           SeleniumLibrary

*** Variables ***
${VALID USER}     tltest100@mailinator.com
${VALID PASSWORD}     Ohlookanacorn@123

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Click Login Button
    # Input Username    demo
    # Input Password    mode
    # Submit Credentials
    # Welcome Page Should Be Open
    [Teardown]    Close Browser


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${BASE URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Click Login Button
    Click Button  css=[data-rf-test-name='SignInLink']

Login Page Should Be Open
    Title Should Be    Real Estate, Homes for Sale, MLS Listings, Agents | Redfin

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    username_field    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}

Submit Credentials
    Click Button    login_button

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Welcome Page