*** Settings ***
Documentation    All the page objects and keyword of HomePage page
Library    SeleniumLibrary

*** Variables ***

${marketplace}    css:a[id="menu_marketplace"]
#${Banking}    xpath://div[@class="menu-container"]//a[2]//following-sibling::div
${Banking}    xpath://div[text()='Banking']

*** Keywords ***

Click on the MarketPlace button
    Wait Until Element Is Visible    ${marketplace}
    Click Element     ${marketplace}

Click on the Banking button
    Wait Until Element Is Visible    ${Banking}
    Click Element     ${Banking}

