***Settings***
Documentation       Arquivos base para o projeto de automação
Library             Browser
Variables           ./resources/site.yml

*** Variables ***
# the variable will hold the name of the target browser
${BROWSER}      chromium          # a default value, if not overriden
${HEADLESS}     false

*** Keywords ***
Que Esteja Na Home Page
	New Browser		    ${BROWSER}  	headless=${HEADLESS}
    New Context         viewport={'width': 1240, 'height': 700}
	New Page	 	    ${URL}

Fechar navegador
    Take Screenshot     fullPage=true

Dado ${keyword}
    Run keyword   ${keyword}

Quando ${keyword}
    Run keyword   ${keyword}

Então ${keyword}
    Run keyword   ${keyword}

E ${keyword}
    Run keyword   ${keyword} 
