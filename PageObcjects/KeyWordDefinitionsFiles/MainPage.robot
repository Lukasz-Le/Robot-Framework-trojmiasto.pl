*** Settings ***
Library    Selenium2Library
Library    String
Resource    ../Locators/Locators.robot

*** Variables ***

${CONVERTED_SUBSTRING_DATE}
${COMPUTER_DATE_DAY} 
${USER_DATE}


*** Keywords ***

Date Choose By User
    [Arguments]    ${USER_DATE}
    Set Suite Variable    ${USER_DATE}
    Log To Console    dzień użytkownika - ${USER_DATE}

Download and Write Name Day
    ${NAME_DAY}=    Get Text    ${NAME_DAY_TROJMIASTOPL}
    Log To Console    ${NAME_DAY}

Download Date
    Wait Until Element Is Visible    ${DATE_TROJMIASTOPL}    10s
    ${DATE}=    Get Text    ${DATE_TROJMIASTOPL}
    ${SUBSTRING_DATE} =    Get Substring    ${DATE}    0    2
    ${CONVERTED_SUBSTRING_DATE}=    Convert To Integer   ${SUBSTRING_DATE}
    Set Suite Variable     ${CONVERTED_SUBSTRING_DATE}
    Log To Console    dzień z trojmiasto.pl - ${CONVERTED_SUBSTRING_DATE} 
    ${COMPUTER_DATE_DAY}    Get Time    return day
    Set Suite Variable     ${COMPUTER_DATE_DAY}
    Log To Console    dzień z komputera - ${COMPUTER_DATE_DAY} 

Open News
    Click Element    ${NEWS} 
    