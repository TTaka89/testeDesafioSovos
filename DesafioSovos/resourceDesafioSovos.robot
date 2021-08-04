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

Type the product "${PRODUCT1}" in the searchbox and search
    Input Text    ${SRC_BOX}    ${PRODUCT1}

Click on button to search
    Mouse Over    ${BTN_SRC}
    Click Button    ${BTN_SRC}

Check if the product "${PRODUCT1}" is listed in the website
    Wait Until Element Is Visible    ${VISIBLE_PRDT}
    Page Should Contain Image    ${IMAGE_PRDT}

Select the choosen product
    Mouse Over    ${SRC_PRODUCT}
    Click Button    ${SRC_PRODUCT}