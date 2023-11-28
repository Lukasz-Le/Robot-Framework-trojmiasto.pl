*** Settings ***
Library   Selenium2Library
Resource    ../Locators/Locators.robot

*** Keywords ***
Search for train connection
    [Arguments]    ${TOWN_NAME1}    ${TOWN_NAME2}
    Click Element     css=.nav-wrapper #details-button.secondary-button
    Click Element    css=a#proceed-link
    Wait Until Element Is Visible    ${START_STATION}
    Input Text    ${START_STATION}    ${TOWN_NAME1}
    Input Text    ${END_STATION}    ${TOWN_NAME2}
    Click Button     ${FIND_CONNECTIONS}

     ${OPTION1}    Run Keyword And Return Status    Wait Until Element Is Visible    ${START_STATION}
     ${OPTION2}    Run Keyword And Return Status    Wait Until Element Is Visible     ${ADVANCED} 
     
     IF  ${OPTION2}
        Click Element     ${ADVANCED} 
        Click Element    ${PROCEED} 
        Wait Until Element Is Visible    ${START_STATION}
        Input Text    ${START_STATION}    ${TOWN_NAME1}
        Input Text    ${END_STATION}    ${TOWN_NAME2}
        Click Button     ${FIND_CONNECTIONS}
    ELSE IF    ${OPTION2}
        Wait Until Element Is Visible    ${START_STATION}
        Input Text    ${START_STATION}    ${TOWN_NAME1}
        Input Text    ${END_STATION}    ${TOWN_NAME2}
        Click Button     ${FIND_CONNECTIONS}
    END
    
 