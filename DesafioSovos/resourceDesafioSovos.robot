*** Settings ***
Documentation        Resource com as implementações das KW da suitWebTesting
Resource             variablesDesafioSovos.robot
Library              SeleniumLibrary
Library              String
Library    Telnet

*** Keywords ***
## ---- SETUP
Opening Browser
    Open Browser  browser=chrome

## ---- TEARDOWN
Closing Browser
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
    Wait Until Element Is Visible    ${IMAGE_PRDT}
    Page Should Contain Image    ${IMAGE_PRDT}

Select the choosen product
    Mouse Over    ${SRC_PRDT}
    Click Element    ${SRC_PRDT}

Choose quantity 1
    FOR    ${CONT}    IN RANGE    0    28
        Log    ${CONT}
            Wait Until Element Is Visible    ${PRDT_CHSEN}  10s
            Mouse Over      ${PRDT_CHSEN}
            Click Element    ${PRDT_CHSEN}
            Wait Until Element Is Visible    ${FILTER}
            Mouse Over     ${BTN_ADD}
            Click Button    ${BTN_ADD}
            Go Back
            Reload Page  
            Sleep   1s
    END
    Mouse Over      ${PRDT_CHSEN}
    Click Element    ${PRDT_CHSEN}
    Wait Until Element Is Visible    ${FILTER}
    Click Button    ${BTN_ADD}
#    Page Should Contain    "Não adicionado"

Delete quantity from cart
    Mouse Over      ${TO_CART}
    Click Element    ${TO_CART}
    Wait Until Element Is Visible    ${DEL_PRDT}
    Click Element     ${DEL_PRDT}

Check empty cart
    Wait Until Element Is Visible  ${CHECK_ECART}
#    Page Should Contain    "Seu carrinho da Amazon está vazio"

# Choose quantity 2
#     Wait Until Element Is Visible    ${PRDT_CHSEN}  10s
#     Mouse Over      ${PRDT_CHSEN}
#     Click Element    ${PRDT_CHSEN}
#     Wait Until Element Is Visible    ${FILTER}
#     Click Button    ${BTN_ADD}
 
#     Click Element   ${BTN_CLOSE}
#     FOR    ${CONT}    IN RANGE    0    2
#         Log    ${CONT}
#             Wait Until Element Is Visible    ${PRDT_CHSEN}  10s
#             Mouse Over      ${PRDT_CHSEN}
#             Click Element    ${PRDT_CHSEN}
#             Wait Until Element Is Visible    ${FILTER}
#             Mouse Over     ${BTN_ADD2}
#             Sleep   1s
#             #IF    ${CONT} == 0
#             Click Element    ${BTN_ADD2}        
#            # END
#            # IF    ${CONT} > 0
#            #       Click Element    ${BTN_ADD3}        
#            # END
#             Click Element   ${BTN_CLOSE}
#     END
    
    
    