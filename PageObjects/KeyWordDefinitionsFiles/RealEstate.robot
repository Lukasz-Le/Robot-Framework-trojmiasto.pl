*** Settings ***
Library   Selenium2Library
Resource    ../Locators/Locators.robot

*** Keywords ***

Choose real estate market
    Click Link    link:Rynek wtórny    #${AFTERMARKET}
   