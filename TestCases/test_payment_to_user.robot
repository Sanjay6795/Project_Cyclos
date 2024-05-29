*** Settings ***
Documentation    To validate Banking - payment to user Functionality
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    close Browser session
Resource    ../Resources/GenericResource.robot
Resource   ../Resources/LoginResource.robot
Resource   ../Resources/HomeResource.robot
Resource    ../Resources/PaymentUser.robot
Library    DataDriver    file=../TestData/payment_to_user_testdata.xlsx    sheet_name=Sheet1

Test Template    To validate payment to user functionality with valid amount
 

*** Variables ***
${amount_data}


*** Test Cases ***
To validate payment    ${user_name}    ${amount_data} 
    

*** Keywords ***
To validate payment to user functionality with valid amount 
    [Documentation]    To validate the successfull payment notification
    [Tags]    Smoke
    [Arguments]    ${user_name}    ${amount_data}
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the Banking button
    PaymentUser.verify the Banking page open
    PaymentUser.Select the option payment to user
    PaymentUser.verify the payment to user page open
    PaymentUser.Enter the username in the to user field   ${user_name}
    PaymentUser.Select the user
    PaymentUser.Enter the valid amount in the amount field     ${amount_data}
    PaymentUser.Click the scheduling dropdown button
    PaymentUser.Click the pay now option
    PaymentUser.Click the next Button in payment page
    PaymentUser.Click the confirm button in the payment page
    PaymentUser.verify the succesfull payment notification




