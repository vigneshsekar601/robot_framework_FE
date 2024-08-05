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

Register User
    [Documentation]    This is to register an new user.
    Page Should Contain    Home
    Click Element    ${login_signup_btn}
    ${new_user_signup}    Get Text    ${new_user_signup_txt}
    Should Be Equal    ${new_user_signup}    New User Signup!
    ${name}    Generate Faker Data    name
    ${email}    Generate Faker Data    email
    Input Text    ${sign_up_name_field}    ${name}
    Input Text    ${sign_up_email_field}    ${email}
    Click Button    ${sign_up_button}
