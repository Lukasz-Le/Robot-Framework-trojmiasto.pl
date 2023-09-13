*** Settings ***
Resource    ../Test1/PageObcjects/KeyWordDefinitionsFiles/ArticlesTitles.robot
Resource    ../Test1/PageObcjects/KeyWordDefinitionsFiles/CommonFunctionality.robot
Resource    ../Test1/PageObcjects/KeyWordDefinitionsFiles/MainPage.robot
Resource    ../Test1/PageObcjects/KeyWordDefinitionsFiles/NewsPage.robot


*** Variables ***
${ADRESS}    https://trojmiasto.pl
${BROWSER}   Chrome

*** Keywords ***


*** Test Cases ***

Check Page
    Open Browser    ${ADRESS}      ${BROWSER}
    CommonFunctionality.Page Cookies
    Page Should Contain    trojmiasto.pl
    
Compare Date trojmiasto.pl and computer date
    MainPage.Download Date
    Should Be Equal As Integers    ${CONVERTED_SUBSTRING_DATE}    ${COMPUTER_DATE_DAY}
    
Compare Date trojmiasto.pl and User Date
    MainPage.Date Choose By User   14
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
       
    
