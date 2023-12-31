*** Settings ***
Library   Selenium2Library
Resource    ../Locators/Locators.robot

*** Keywords ***

Download First Aftermarket Title
    ${VARIANT_RESULTS}    Run Keyword And Return Status    Wait Until Element Is Visible     ${RESULTS_VISIBILITY}      2s
    
    IF  ${VARIANT_RESULTS}
        ${NO_RESULTS_TEXT}    Get Text    ${RESULTS_VISIBILITY} 
        Log To Console    ${NO_RESULTS_TEXT}
    ELSE
        ${FIRST_FOUND_PROPERTY_LINK_BUTTON}     Get WebElement    ${FIRST_FOUND_PROPERTY_LINK}
        Execute Javascript    arguments[0].click();    ARGUMENTS    ${FIRST_FOUND_PROPERTY_LINK_BUTTON}
        Wait Until Element Is Visible    ${FIRST_FOUND_PROPERTY_TITLE}    10s
        ${FIRST_FOUND_PROPERTY_TITLE_DOWNLOAD}    Get Text    ${FIRST_FOUND_PROPERTY_TITLE}
        Log To Console    Pierwsza nieruchomość - ${FIRST_FOUND_PROPERTY_TITLE_DOWNLOAD}
    END
