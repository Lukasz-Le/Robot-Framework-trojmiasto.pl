*** Settings ***
Library   Selenium2Library
Resource    ../Locators/Locators.robot

*** Keywords ***
Enter Date and Check Connection
    Wait Until Page Contains    Połączenie 
    [Arguments]    ${SELECTED_TRAIN_DATE}
    Input Text   ${TRAIN_DATE}    ${SELECTED_TRAIN_DATE}
    ${SEARCH_BUTTON}     Get WebElement    ${SEARCH_BUTTON_KOLEO}
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${SEARCH_BUTTON}
    Wait Until Page Contains    Połączenie    400s
    ${VARIANT1}    Run Keyword And Return Status    Wait Until Element Is Visible     ${FIRST_TRAIN_TICKET_PRICE_KOLEO1}       1s
    ${VARIANT2}    Run Keyword And Return Status    Wait Until Element Is Visible     ${FIRST_TRAIN_TICKET_PRICE_KOLEO2}      1s
    ${VARIANT3}    Run Keyword And Return Status    Wait Until Element Is Visible    ${WARNING_KOLEO}    1s

    IF  ${VARIANT3}
        ${Warning}    Get Text    css=.search-results .day-connections .row .warning
        Log To Console    ${Warning}
    ELSE IF    ${VARIANT2}
        ${SCHEDULE_DATE}    Get Text    ${FIRST_TRAIN_DATE_KOLEO}
        ${Conection_TIME}    Get Text    ${FIRST_TRAIN_CONNECTION_TIME_KOLEO}
        ${Ticket_PRICE}    Get Text    ${FIRST_TRAIN_TICKET_PRICE_KOLEO2}
        ${DEPARTURE_TIME}    Get Text    ${FIRST_TRAIN_DEPARTURE}
        ${ARRIVAL_TIME}    Get Text    ${FIRST_TRAIN_ARRIVAL}
        Log To Console    Data przejazdu
        Log To Console    ${SCHEDULE_DATE}
        Log To Console    Godzina odjazdu i przyjazdu
        Log To Console    ${DEPARTURE_TIME} ${ARRIVAL_TIME}
        Log To Console    czas jazdy i cena przejazdu
        Log To Console     ${Conection_TIME} ${Ticket_PRICE}
    ELSE
        ${SCHEDULE_DATE}    Get Text    css=.search-results .date .row
        ${Conection_TIME}    Get Text    ${FIRST_TRAIN_CONNECTION_TIME_KOLEO}
        ${Ticket_PRICE}    Get Text    ${FIRST_TRAIN_TICKET_PRICE_KOLEO1}
        ${DEPARTURE_TIME}    Get Text    ${FIRST_TRAIN_DEPARTURE}
        ${ARRIVAL_TIME}    Get Text    ${FIRST_TRAIN_ARRIVAL}
        Log To Console    Data przejazdu
        Log To Console    ${SCHEDULE_DATE}
        Log To Console    Godzina odjazdu i przyjazdu
        Log To Console    ${DEPARTURE_TIME} ${ARRIVAL_TIME}
        Log To Console     czas jazdy i cena przejazdu
        Log To Console     ${Conection_TIME} ${Ticket_PRICE} 
    END