*** Settings ***
Documentation    To validate Banking - payment to user Functionality
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    close Browser session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/LoginResource.robot
Resource    ../Resources/HomeResource.robot
Resource    ../Resources/PaymentUser.robot



*** Test Cases ***

To validate payment to user functionality with blank fields
    [Tags]    Smoke
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the Banking button
    PaymentUser.verify the Banking page open
    PaymentUser.Select the option payment to user
    PaymentUser.verify the payment to user page open
    PaymentUser.Click the next Button in payment page
    PaymentUser.verify the error message for user to field is given blank
    PaymentUser.verify the error message for amount field is given blank

