*** Settings ***
Documentation    Suite de testes WEB - Site: htt://automationpractice.com
Resource         resourceDesafioSovos.robot
Resource         variablesDesafioSovos.robot
Suite Setup      Opening Browser
#Suite Teardown   Closing Browser

# robot -d ./results suiteDesafioSovos.robot

*** Test Cases ***
# Case Test 01: Search for products
#     Access the home page website
#     Type the product "Playstation 5" in the searchbox and search
#     Click on button to search
#     Check if the product "Playstation 5" is listed in the website

Case Test 02: Add valid quantity of the product to the cart
    Access the home page website
    Type the product "Playstation 5" in the searchbox and search
    Click on button to search
    Check if the product "Playstation 5" is listed in the website
    Select the choosen product
    Choose quantity 1
    Delete quantity from cart
    Check empty cart
