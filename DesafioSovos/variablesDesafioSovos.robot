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
${SRC_PRDT}             xpath=//img[contains(@alt,'Console PlayStation®5')]

# Add Choosen Product
${FILTER}               xpath=//span[@aria-hidden='true'][contains(.,'Filtrar')]
${PRDT_CHSEN}           xpath=//span[contains(.,'Novo (7) de R$ 6.691,00')]
${BTN_ADD}              xpath=//input[contains(@aria-label,' 6.691,00')]

# Other Variables
${NAME}                 Thiago
${LASTMANE}             Taka
