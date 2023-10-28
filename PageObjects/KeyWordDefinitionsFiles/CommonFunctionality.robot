<<<<<<< HEAD
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
=======
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
>>>>>>> 9d2e4465c1a8984342f536f50daa68f54b471de3
    Click Button    ${ACCEPT_COOKIES}