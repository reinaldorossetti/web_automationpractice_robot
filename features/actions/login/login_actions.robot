*** Settings ***
Resource         ../../support/base_tests.robot
Variables        ../../support/pages/login_page.yml

*** Variables ***
${TITLE}

*** Keywords ***
Efetuar o login
    Fill Text      ${txt_user}   ${USER}
    Fill Secret    ${txt_password}    ${PASSWORD}
    Click          ${btn_login}
    ${TITLE} =    Get Text    ${txt_title}    ==    PRODUCTS    # Returns element text with assertion.
    Set Suite Variable                ${TITLE}

Validar o login realizado
    Should Be Equal     ${TITLE}    PRODUCTS
    Log To Console     Resposta:   ${TITLE}