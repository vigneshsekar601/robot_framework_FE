*** Settings ***
Resource    ../../resource/common.robot
Resource    ../../keyworks/register.robot


*** Test Cases ***
Register User
    [Tags]    register_user
    Given Open The application
    Then Register User
    And Delete Account
