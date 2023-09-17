*** Settings ***
Library   Selenium2Library
Resource    ../Locators/Locators.robot

*** Keywords ***
Go Back Page   
    Go Back

Finish TestCases
    Close Browser
    
Page Cookies
    Wait Until Element Is Visible    ${ACCEPT_COOKIES}    10s
    Click Button    ${ACCEPT_COOKIES}