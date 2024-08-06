# Register and Login
login_signup_btn = "xpath://a[@href='/login']"
new_user_signup_txt = "xpath://div[@class='signup-form']/h2"
sign_up_name_field = "xpath://input[@data-qa='signup-name']"
sign_up_email_field = "xpath://input[@data-qa='signup-email']"
sign_up_button = "xpath://button[@data-qa='signup-button']"

#Account info screen
account_info_text = "xpath://div[@class='login-form']/h2/b"
title_radio_btn = "xpath://label[@for='id_gender1']"
password_fld = "xpath://input[@type='password']"
b_date = 'css:#days'
b_month = 'css:#months'
b_year = 'css:#years'
newsletter_checkbox = "xpath://input[@id='newsletter']"
optn_checkbox = 'css:#optin'

# Fill additional details
first_name_fld = 'ID:first_name'
last_name_fld = 'ID:last_name'
address1_fld = 'ID:address1'
address2_fld = 'ID:address2'
country_drpbox = 'ID:country'
state_drpbox = 'ID:state'
city_fld = 'ID:city'
pincode_fld = 'ID:zipcode'
mobile_number_fld = 'ID:mobile_number'
sign_up_submit_btn = "xpath://button[@data-qa='create-account']"
act_created_txt = "xpath://h2[@data-qa='account-created']"
continue_btn = "xpath://a[@data-qa='continue-button']"

# delete Account
delete_account = "xpath://a[@href='/delete_account']"
act_deleted_txt = "xpath://h2[@data-qa='account-deleted']"

# Login Account
login_email_field = "xpath://input[@data-qa='login-email']"
login_password_field = "xpath://input[@data-qa='login-password']"
login_btn = "xpath://button[@data-qa='login-button']"
login_verify = "css:#header > div > div > div > div.col-sm-8 > div > ul > li:nth-child(10)"
user_login_txt = "xpath://div[@class='login-form']/h2"
logout = "xpath://a[@href='/logout']"
