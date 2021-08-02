*** Settings ***
Documentation    Suite de testes WEB - Site: htt://automationpractice.com
Resource         resourceDesafioSovos.robot
Suite Setup      Abrir o navegador
Suite Teardown   Fechar o navegador

*** Test Cases ***
Case Test 01: Search for products
    Access the home page website

