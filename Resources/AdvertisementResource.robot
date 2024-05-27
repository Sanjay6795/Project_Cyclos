*** Settings ***
Documentation    All the page object and keyword of Advertisement page
Library    SeleniumLibrary

*** Variables ***
${market_title}    xpath://div[@class="side-menu-icon"]//following-sibling::div
${Advertisement}    xpath://div[text()='Advertisements']
${Advertisement_title}    xpath://div[text()=' Search advertisements ']
${keyword}    xpath=(//div[@class='d-flex label-value-value']//input)[1]
${order_By}    xpath://div[@class='w-100 mw-100 text-truncate pr-3']
${Relevance}    xpath://a[@class="select-option mt-1"]
${last_published}    xpath://div[@class="dropdown-menu show"]//a[2]
${lowest_price}    xpath://div[@class="dropdown-menu show"]//a[3]
${highest_price}    xpath://div[@class="dropdown-menu show"]//a[text()=' Highest price ']
${keyword_based}    xpath:(//div[@class="card"])[2]//div[@class="card-body"]
${invalid_keyword_message}    xpath:(//div[@class="page-content-body card-body d-flex flex-column"])[3]

${Advertisement_content}    xpath://div[@class="row category-results"]//div

*** Keywords ***


verify that the markerplace is open
    Wait Until Element Is Visible    ${market_title}
    Element Text Should Be   ${market_title}     Marketplace   

Click on the advertisement page button
    Wait Until Element Is Visible    ${Advertisement}
    Click Element    ${Advertisement}

Verify the Advertisement page
    Wait Until Element Is Visible    ${Advertisement}
    Element Text Should Be    ${Advertisement_title}    Search advertisements

Enter the valid Keyword in the keyword box
    Wait Until Page Contains Element    ${keyword}
    #Click Element    ${keyword} 
    Input Text    ${keyword}    food  


verify the keyword based image displayed
    #Wait Until Element Is Visible   ${keyword_based}
    Element Should Contain    ${keyword_based}     food 

Enter the invalid Keyword in the keyword box    
    #Wait Until Element Is Visible    ${keyword}
    Input Text    ${keyword}    12345 

verify the invalid keyword message is displayed
    Wait Until Element Is Visible    ${invalid_keyword_message}
    Element Text Should Be    ${invalid_keyword_message}     No results match the search criteria  



Click on the dropdown button Order by
    Wait Until Element Is Visible    ${order_By}
    Click Element    ${order_By}


Select the option relevance
    Click Element    ${Relevance}

Select the option last published
    Click Element    ${last_published}

Select the option lowest price
    Click Element    ${lowest_price}

Select the option highest price
    Click Element    ${highest_price}




Number of product displayed
    Wait Until Page Contains Element    ${Advertisement_content}  
    ${products}=    Get WebElements    ${Advertisement_content}
    ${product_count}=    Get Length    ${products}
    Log    Number of products displayed: ${product_count}

    




