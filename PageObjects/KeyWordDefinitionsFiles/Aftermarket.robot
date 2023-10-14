*** Settings ***
Library   Selenium2Library
Resource    ../Locators/Locators.robot

*** Keywords ***

Real Estate Aftermarket
    Click Link   link:Rynek wtórny
    [Arguments]    ${USER_PROPERTY_CHOOSE}
    Select From List By Label    ${PROPERTY_TYPE}    ${USER_PROPERTY_CHOOSE}
    Click Element    ${MORE_FILTERS}
    Run Keyword And Ignore Error   Mouse Down     ${SEARCH_BUTTON_PROPERTY}
    Wait Until Element Is Visible   ${SEARCH_BUTTON_PROPERTY}
    Page Should Contain Checkbox    ${KITCHEN}
    ${KITCHEN_CHECKBOX}     Get WebElement    ${KITCHEN}
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${KITCHEN_CHECKBOX}
    ${PARKING_SPACE-CHECKBOX}     Get WebElement    ${PARKING_SPACE}
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${PARKING_SPACE-CHECKBOX}
    Click Button    ${SEARCH_BUTTON_PROPERTY}
    