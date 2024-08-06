*** Settings ***
Library         SeleniumLibrary
Library         ../resource/custom_library/custom.py
Variables       ../config/environment.py
Variables       ../resource/pageObjects/register.py
Resource        ../resource/common.robot

*** Keywords ***
Register User
    [Documentation]    This keyword registers a new user with fake details.
    Fake details generator
    Page Should Contain    Home
    Click Login/signUp button
    ${new_user_signup}    Get Text    ${new_user_signup_txt}
    Should Be Equal    ${new_user_signup}    New User Signup!
    Input Text    ${sign_up_name_field}    ${name}
    Input Text    ${sign_up_email_field}    ${email}
    Click Button    ${sign_up_button}
    ${account_info_txt}    Get Text    ${account_info_text}
    Should Be Equal    ${account_info_txt}    ENTER ACCOUNT INFORMATION
    Click Element    ${title_radio_btn}
    Input Text    ${password_fld}    ${password}
    Select From List By Value    ${b_date}    18
    Select From List By Value    ${b_month}    4
    Select From List By Value    ${b_year}    1999
    Execute JavaScript    window.scrollTo(0,300)
    Click Element    ${newsletter_checkbox}
    Click Element    ${optn_checkbox}
    Input Text    ${first_name_fld}    ${first_name}
    Input Text    ${last_name_fld}    ${last_name}
    Input Text    ${address1_fld}    ${address}
    Input Text    ${address1_fld}    ${address}
    Select From List By Value    ${country_drpbox}    India
    Input Text    ${state_drpbox}    Tamil Nadu
    Input Text    ${city_fld}    Chennai
    Input Text    ${pincode_fld}    600077
    Input Text    ${mobile_number_fld}    ${phone_number}
    Click Button    ${sign_up_submit_btn}
    ${account_created_txt}    Get Text    ${act_created_txt}
    Should Be Equal    ${account_created_txt}    ACCOUNT CREATED!
    Click Element    ${continue_btn}
    ${loged_in_user_txt}    Get Text    ${login_verify}
    Should Be Equal    ${loged_in_user_txt}    Logged in as ${name}

