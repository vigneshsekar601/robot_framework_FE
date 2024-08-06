*** Settings ***
Library             SeleniumLibrary
Resource            ../../keyworks/login.robot
Resource            ../../keyworks/register.robot

*** Test Cases ***
Login To the Account with valid user name and password
    [Tags]    login_user
    Given Open the application
    When Register User
    And logout the User
    Then Login To the Account
    And Delete Account
