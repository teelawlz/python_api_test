*** Settings ***
Documentation     Login Test for redfin.com
...
Resource          resource.robot

*** Variables ***
${VALID USER}     tltest100@mailinator.com
${VALID PASSWORD}     Ohlookanacorn@123
${USERNAME}       TLTest
# TODO: Make less hardcoded

## Page Locators
${LOGIN BUTTON}    css=[data-rf-test-name='SignInLink']
${EMAIL SIGNIN BUTTON}    css=.emailSignInButton
${EMAIL FIELD}    css=input[name='emailInput']
${PASSWORD FIELD}    css=input[name='passwordInput']
${SUBMIT BUTTON}    css=button.submitButton
${PROFILE LINK}    css=.NameAndThumbnail

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Click Login Button
    Click Continue With Email Button
    Input Username
    Input Password
    Submit Credentials
    Username is displayed
    [Teardown]    Close Browser


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${BASE URL}    ${BROWSER}
    Maximize Browser Window

Click Login Button
    Click Button  ${LOGIN BUTTON}

Click Continue With Email Button
    Click Button  ${EMAIL SIGNIN BUTTON}

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    Input Text  ${EMAIL FIELD}    ${VALID USER}

Input Password
    Input Text  ${PASSWORD FIELD}    ${VALID PASSWORD}

Submit Credentials
    Click Button  ${SUBMIT BUTTON}

Username is displayed
    Element Should Contain  ${PROFILE LINK}  ${USERNAME}