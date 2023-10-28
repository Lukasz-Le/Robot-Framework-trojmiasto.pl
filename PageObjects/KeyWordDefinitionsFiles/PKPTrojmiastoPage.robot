*** Settings ***
Library   Selenium2Library
Resource    ../Locators/Locators.robot

*** Keywords ***
Search for train connection
    [Arguments]    ${TOWN_NAME1}    ${TOWN_NAME2}
    Input Text   ${START_STATION}    ${TOWN_NAME1}
    Input Text    ${END_STATION}    ${TOWN_NAME2}
    Click Button     ${FIND_CONNECTIONS}
    
 