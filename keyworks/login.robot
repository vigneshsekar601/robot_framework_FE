*** Settings ***
Library     SeleniumLibrary
Resource    ../resource/common.robot


*** Keywords ***
Login To the Account
    Click Login/signUp button
    ${login_txt}    Get Text    ${user_login_txt}
    Should Be Equal    ${login_txt}    Login to your account
    Input Text    ${login_email_field}    ${email}
    Input Text    ${login_password_field}    ${password}
    Click Button    ${login_btn}
