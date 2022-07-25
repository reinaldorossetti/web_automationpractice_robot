*** Settings ***
Resource         ../../support/base_tests.robot
Variables        ../../support/pages/login_page.yml


*** Keywords ***
Efetuar o login
    Fill Text      ${txt_user}   ${USER}
    Fill Secret    ${txt_password}    ${PASSWORD}
    Click          ${btn_login}
    ${text} =    Get Text    ${txt_title}    ==    PRODUCTS    # Returns element text with assertion.
    Should Be Equal     ${text}    PRODUCTS
    Log To Console     Resposta:   ${text}