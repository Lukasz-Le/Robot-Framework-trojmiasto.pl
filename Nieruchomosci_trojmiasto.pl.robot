*** Settings ***
Resource    ./PageObjects/KeyWordDefinitionsFiles/ArticlesTitles.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/CommonFunctionality.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/MainPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/NewsPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/PkpTrojmiastoPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/RealEstate.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/Aftermarket.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/AftermarketTitle.robot

*** Keywords ***
Open Page
    [Arguments]    ${ADRESS}  ${BROWSER}         
    Open Browser  ${ADRESS}  ${BROWSER}  
    Maximize Browser Window

*** Test Cases ***

Real Estate Search
    Open Page   https://trojmiasto.pl    chrome
    CommonFunctionality.Page Cookies
    MainPage.Open Real Estate
    RealEstate.Choose real estate market
    Aftermarket.Real Estate Aftermarket   Mieszkanie    # enter the type of property
    AftermarketTitle.Download First Aftermarket Title
    
    