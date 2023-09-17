*** Settings ***
Resource    ./PageObcjects/KeyWordDefinitionsFiles/ArticlesTitles.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/CommonFunctionality.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/MainPage.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/NewsPage.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/PkpTrojmiastoPage.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/RealEstate.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/Aftermarket.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/AftermarketTitle.robot

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
    
    