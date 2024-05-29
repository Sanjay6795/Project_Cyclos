*** Settings ***
Documentation    To validate Banking - payment to user Functionality
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    close Browser session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/LoginResource.robot
Resource    ../Resources/HomeResource.robot
Resource    ../Resources/PaymentUser.robot
Library    DataDriver    file=../TestData/payment_to_user_testdata.xlsx    sheet_name=Sheet2

Test Template    To validate payment to user functionality with invalid amount

 

*** Test Cases ***
To validate payment    ${user_name}    ${exceeded_amount_data} 
    
*** Keywords ***

To validate payment to user functionality with invalid amount
    [Documentation]    To validate the Exceeded amount is entered
    [Tags]    Smoke
    [Arguments]    ${user_name}    ${exceeded_amount_data}
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the Banking button
    PaymentUser.verify the Banking page open
    PaymentUser.Select the option payment to user
    PaymentUser.verify the payment to user page open
    PaymentUser.Enter the username in the to user field    ${user_name}
    PaymentUser.Select the user
    PaymentUser.Enter the valid amount in the amount field    ${exceeded_amount_data}
    Sleep    5
    PaymentUser.Click the next Button in payment page
    PaymentUser.verify exceeded amount is entered
