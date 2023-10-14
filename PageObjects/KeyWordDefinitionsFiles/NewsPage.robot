*** Settings ***
Library   Selenium2Library
Resource    ../Locators/Locators.robot

*** Keywords ***

Select First Article
    Run Keyword and Ignore Error    Scroll Element Into View    ${FIRST_ARTICLE_LINK}
    Wait Until Element Is Visible    ${FIRST_ARTICLE_LINK}    10s
    Click Element    ${FIRST_ARTICLE_LINK}
    
Select Third Article
    Run Keyword and Ignore Error    Scroll Element Into View    ${THIRD_ARTICLE_LINK} 
    Wait Until Element Is Visible    ${THIRD_ARTICLE_LINK}    10s
    Click Element    ${THIRD_ARTICLE_LINK}
     