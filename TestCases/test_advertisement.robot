*** Settings ***
Documentation    To validate Advertisement Functionality
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    close Browser session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/LoginResource.robot
Resource    ../Resources/HomeResource.robot
Resource   ../Resources/AdvertisementResource.robot


*** Test Cases ***

verify that the valid keyword is entered in the keyword field
    [Tags]    Smoke     valid_keyword
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.Click on the advertisement page button
    Sleep    5
    AdvertisementResource.Enter the valid Keyword in the keyword box
    AdvertisementResource.verify the keyword based items displayed



verify that the Invalid keyword is entered in the keyword field
    [Tags]    Retest    
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.Click on the advertisement page button
    Sleep    5
    AdvertisementResource.Enter the invalid Keyword in the keyword box
    AdvertisementResource.verify the invalid keyword error message is displayed



Verify the advertisements functionality with dropdownlist order by Relevance
    [Tags]    Smoke
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.Click on the advertisement page button
    AdvertisementResource.Click the show advertisement button
    AdvertisementResource.Click on the dropdown button Order by
    AdvertisementResource.Select the option relevance
    AdvertisementResource.verify relevance option


Verify the advertisements functionality with dropdownlist order by last published
    [Tags]     Smoke
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.Click on the advertisement page button
    AdvertisementResource.Click the show advertisement button
    AdvertisementResource.Click on the dropdown button Order by
    AdvertisementResource.Select the option last published
    AdvertisementResource.verify relevance option



Verify the advertisements functionality with dropdownlist order by lowest
    [Tags]    Smoke
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.Click on the advertisement page button
    AdvertisementResource.Click the show advertisement button
    AdvertisementResource.Click on the dropdown button Order by
    AdvertisementResource.Select the option lowest price
    AdvertisementResource.verify the lowest price



Verify the advertisements functionality with dropdownlist order by Highest
    [Tags]    Smoke
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.Click on the advertisement page button
    AdvertisementResource.Click the show advertisement button
    AdvertisementResource.Click on the dropdown button Order by
    AdvertisementResource.Select the option highest price
    AdvertisementResource.verify the highest price



verify the wishlist functionality
    [Tags]    Regression    wish
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.Click on the advertisement page button
    AdvertisementResource.Select the favourite only checkbox
    AdvertisementResource.verify the favourite list contains favorite item


    