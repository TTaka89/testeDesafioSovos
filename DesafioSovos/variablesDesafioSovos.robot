*** Settings ***
Documentation        Resource com as variáveis da suitDesafioSovos

*** Variables ***
# Website
${URL}                  http://www.amazon.com.br/

# HomePage
${CHECK_HOME_PAGE}      xpath=//a[@aria-label='Amazon.com.br']
${SRC_BOX}              xpath=//input[contains(@type,'text')]
${BTN_SRC}              xpath=//input[contains(@value,'Ir')]

# Product Search
${VISIBLE_PRDT}         xpath=//span[@class='a-color-state a-text-bold']
${IMAGE_PRDT}           xpath=//img[@data-image-index='1']
${SRC_PRODUCT}          xpath=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Console PlayStation®5')]

# Other Variables
${NAME}                 Thiago
${LASTMANE}             Taka
