*** Settings ***
Resource         ../../support/base_tests.robot
Suite Teardown   Fechar Navegador


*** Test Cases ***
Cenario 01: Login com sucesso
     Dado que esteja na home page.