***Settings***
Documentation       Arquivos base para o projeto de automação
Library             Browser

*** Variables ***
# the variable will hold the name of the target browser
${BROWSER}      chromium          # a default value, if not overriden
${HEADLESS}     false

*** Keywords ***
que esteja na home page.
	New Browser		    ${BROWSER}  	headless=${HEADLESS}
    New Context         viewport={'width': 1240, 'height': 700}
	New Page	 	    about:blank

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
