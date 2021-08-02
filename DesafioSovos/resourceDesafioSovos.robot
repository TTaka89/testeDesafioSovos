*** Settings ***
Documentation        Resource com as implementações das KW da suitWebTesting
Resource             variablesDesafioSovos.robot
Library              SeleniumLibrary
Library              String

*** Keywords ***
## ---- SETUP
Abrir o navegador
    Open Browser  browser=chrome

## ---- TEARDOWN
Fechar o navegador
    Close Browser

## ---- STEPS
Access the home page website
    Go To    ${URL}
    Wait Until Element Is Visible  ${CHECK_HOME_PAGE}