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
${FILTER}               xpath=//*[@id="aod-filter-string"]
${PRDT_CHSEN}           xpath=//*[@id="olp_feature_div"]/div[2]/span/a
${BTN_ADD}              xpath=(//input[@name='submit.addToCart'])[1]
# ${BTN_ADD2}             xpath=//*[@id="aod-offer-qty-button-0-announce"]
# ${BTN_CLOSE}            xpath=//*[@id="aod-close"]/span/span/i

# Type of website layout
# ${CHK_T1}               xpath=//*[@id="hlb-subcart"]/div[1]/span/span[1]/b  

# Delete quantity from cart
${TO_CART}              xpath=//*[@id="hlb-view-cart-announce"]
${DEL_PRDT}             xpath=//input[@data-action='delete']

# Empty cart
${CHECK_ECART}          xpath=//h2[contains(@class,'sc-your-amazon-cart-is-empty')]


