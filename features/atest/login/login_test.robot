*** Settings ***
Resource         ../../support/base_tests.robot
Resource         ../../actions/login/login_actions.robot
Suite Setup      Dado que esteja na home page
Suite Teardown   Fechar Navegador


*** Test Cases ***
Cenario 01: Login com sucesso
     Quando Efetuar o login
     Então Validar o login realizado