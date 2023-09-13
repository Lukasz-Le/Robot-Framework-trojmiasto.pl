*** Settings ***
Library    Selenium2Library
Resource    ../Locators/Locators.robot

*** Keywords ***
Download First Article Title
    Wait Until Element Is Visible    ${FIRST_ARTICLE_TITLE}    10s
    ${FIRST_ARTICLE_TITLE_DOWNLOAD}    Get Text    ${FIRST_ARTICLE_TITLE}
    Log To Console    Pierwszy artykuł - ${FIRST_ARTICLE_TITLE_DOWNLOAD}
    
Download Third Article Title    
    Wait Until Element Is Visible    ${THIRD_ARTICLE_TITLE}    10s 
    ${THIRD_ARTICLE_TITLE_DOWNLOAD}    Get Text    ${THIRD_ARTICLE_TITLE}             
    Log To Console  Trzeci artykuł - ${THIRD_ARTICLE_TITLE_DOWNLOAD}  