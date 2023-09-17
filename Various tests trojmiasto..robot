*** Settings ***
Resource    ./PageObcjects/KeyWordDefinitionsFiles/ArticlesTitles.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/CommonFunctionality.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/MainPage.robot
Resource    ./PageObcjects/KeyWordDefinitionsFiles/NewsPage.robot
 
*** Keywords ***
Open Page
    [Arguments]    ${ADRESS}  ${BROWSER}         
    Open Browser  ${ADRESS}  ${BROWSER}  
    Maximize Browser Window

*** Test Cases ***

Check Page
    Open Page   https://trojmiasto.pl    chrome
    CommonFunctionality.Page Cookies
    Page Should Contain    trojmiasto.pl
    
Compare Date trojmiasto.pl and computer date
    MainPage.Download Date
    Should Be Equal As Integers    ${CONVERTED_SUBSTRING_DATE}    ${COMPUTER_DATE_DAY}
    
Compare Date trojmiasto.pl and User Date
    MainPage.Date Choose By User   18
    Should Be Equal As Integers    ${CONVERTED_SUBSTRING_DATE}     ${USER_DATE}  
    
Name Day
    MainPage.Download and Write Name Day
    
Articles 
    MainPage.Open News
    NewsPage.Select First Article
    ArticlesTitles.Download First Article Title
    CommonFunctionality.Go Back Page
    NewsPage.Select Third Article
    ArticlesTitles.Download Third Article Title
    [Teardown]
       
    
