*** Settings ***
Documentation        Resource com as implementações das KW da suitWebTesting
Library              SeleniumLibrary
Library              String

*** Variables ***
${URL}       http://automationpractice.com/index.php
${NAME}      Thiago
${LASTMANE}  Taka


*** Keywords ***
## ---- SETUP
Abrir o navegador
    Open Browser  browser=chrome

## ---- TEARDOWN
Fechar o navegador
    Close Browser