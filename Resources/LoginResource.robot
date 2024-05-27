*** Settings ***
Documentation    All the page object and keyword of Loginpage page
Library    SeleniumLibrary


*** Variables ***
${login_button}    xpath:(//div[text()=' Login '])[1]
${username_locator}    xpath://input[@placeholder="User"]
${password_locator}    xpath://input[@placeholder="Password"]
${submit_button}    xpath://span[text()='Submit']

${username}    Sanjay_stark
${password}    Sanjay

*** Keywords ***

click the login button
    Click Element    ${login_button}

Fill the Login page
    Wait Until Element Is Visible    ${username_locator}
    Input Text    ${username_locator}    ${username}

    Input Text    ${password_locator}    ${password}
    Wait Until Element Is Visible    ${submit_button} 
    Click Element    ${submit_button}
