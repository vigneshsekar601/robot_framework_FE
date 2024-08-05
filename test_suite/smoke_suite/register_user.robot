*** Settings ***
Resource    ../../resource/common.robot


*** Test Cases ***
Register User
    Given Open the Application
    Then Register User
