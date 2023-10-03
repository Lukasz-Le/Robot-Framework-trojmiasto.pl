*** Settings ***
Resource    ./PageObcjects/KeyWordDefinitionsFiles/ArticlesTitles.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/CommonFunctionality.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/MainPage.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/NewsPage.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/PKPTrojmiastoPage.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/KoleoPage.robot

*** Keywords ***
Open Page
    [Arguments]    ${ADRESS}  ${BROWSER}         
    Open Browser  ${ADRESS}  ${BROWSER}  
    Maximize Browser Window

*** Test Cases ***

Searching train conenctions    
    Open Page   https://trojmiasto.pl    chrome
    CommonFunctionality.Page Cookies
    Page Should Contain    trojmiasto.pl
    MainPage.Open PKP Trojmiasto
    PKPTrojmiastoPage.Search for train connection    Gdańsk    Warszawa    #Write the departure and destination station
    KoleoPage.Enter Date and Check Connection    20.09.2023 09:00    #write date in format dd-mm-yyyy hh:mm date should not to be past date