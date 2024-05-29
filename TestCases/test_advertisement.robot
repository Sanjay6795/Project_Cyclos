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
    [Documentation]    Validate the Advetisment functionality by giving a valid keyword
    [Tags]    Smoke    
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.Click on the advertisement page button
    Sleep    5
    AdvertisementResource.Enter the valid Keyword in the keyword box
    AdvertisementResource.verify the keyword based items displayed



verify that the Invalid keyword is entered in the keyword field
    [Documentation]    To Validate the advertisement functionality with invalid keyword
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
    [Documentation]    To validate the advertisement functionalist with Relevance
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
    [Documentation]    To validate the advertisement functionalist with last published
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
    [Documentation]    To validate the advertisement functionalist with lowest price
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
    [Documentation]    To validate the advertisement functionalist with Highest price
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
    [Documentation]    To validate the wishlist functionalist
    [Tags]    Regression    
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    Sanjay_stark    Sanjay
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.Click on the advertisement page button
    AdvertisementResource.Select the favourite only checkbox
    AdvertisementResource.verify the favourite list contains favorite item


    