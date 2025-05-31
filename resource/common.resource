*** Settings ***
Library         SeleniumLibrary
Library         ../resource/custom_library/custom.py
Variables       ../config/environment.py
Variables       ../resource/pageObjects/register.py


*** Keywords ***
Open the Application
    Open Browser    ${${env}.url}    ${browser}
    Maximize Browser Window
    ${title}    Get Title
    Title Should Be    Automation Exercise
    Should Be Equal    ${title}    Automation Exercise
    Sleep    2s

Fake details generator
    [Documentation]    This keyword contains fake data
    ${name}    Generate Faker Data    name
    ${email}    Generate Faker Data    email
    ${password}    Generate Faker Data    password
    ${first_name}    Generate Faker Data    first_name
    ${last_name}    Generate Faker Data    last_name
    ${address}    Generate Faker Data    address
    ${phone_number}    Generate Faker Data    phone_number
    Set Global Variable    ${name}
    Set Global Variable    ${email}
    Set Global Variable    ${password}
    Set Global Variable    ${first_name}
    Set Global Variable    ${last_name}
    Set Global Variable    ${address}
    Set Global Variable    ${phone_number}

Click Login/signUp button
    Click Element    ${login_signup_btn}

Delete Account
    Click Element    ${delete_account}
    ${account_deleted_txt}    Get Text    ${act_deleted_txt}
    Should Be Equal    ${account_deleted_txt}    ACCOUNT DELETED!
    Click Element    ${continue_btn}
    Sleep    3s

logout the User
    Click Element    ${logout}
    ${login_txt}    Get Text    ${user_login_txt}
    Should Be Equal    ${login_txt}    Login to your account