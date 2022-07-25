# web_automationpractice_robot

Projeto de Automação para testar o robot framework com a browser library.


installation instructions
Only Python 3.7 or newer is supported.

1. Install node.js e.g. from https://nodejs.org/en/download/
2. Update pip pip install -U pip to ensure latest version is used
3. Install robotframework-browser from the commandline: pip install robotframework-browser
4. Install the node dependencies: run rfbrowser init in your shell
5. if rfbrowser is not found, try python -m Browser.entry init

Passo a passo para configuração:
```
 git clone https://github.com/reinaldorossetti/web_automationpractice_robot.git
 cd web_automationpractice_robot   
 pip install -r requirements.txt
```

Rodando o report local:
```
python -m robot --listener allure_robotframework --rerunfailed my_reports/output.xml -d my_reports -i api_tests ./ 
allure generate ./output/allure -o allure-results/
allure serve
```

A typical cucumber directory pattern (projeto segue o padrão ATDD - style gherkin).  
steps_definitions --> actions   
specifications   --> atest (the same in browser library framework)  
.  
├── features                    # Files and folders of framework (root code).  
    ├── support                 # Commons files to tests spec (global use).  
        ├── pages               # YML locators.  
        ├── resources           # Json ou YAML files.  
    ├── actions                 # Keywords of tests.  
    ├── atest                   # Specification of what the tests should do and runner of tests.  
├── .gitignore              # Files and Folders to ignore in repository.  
├── LICENSE  
├── README.md               # Documentation of project.  
└── requirements.txt        # Libraries to need to install.  

> Use short lowercase names at least for the top-level files and folders except  
> `LICENSE`, `README.md`, in folder pages the name follow github default in Letter case.  
> Use yaml file to store as environment variables and locators, used in the robot files.   
> The Variables that are not mutable must follow upcase in python by default.  

** This project follow the best pratices, below refences of the same.

Dependencies of project:
```
robotframework-browser~=13.3.0
robotframework~=5.0.0
robotframework-faker
pyyaml
allure-robotframework
```

References:  
https://pypi.org/project/robotframework-pageobjectlibrary    
https://libraries.io/pypi/robotframework-pageobjectlibrary  
https://github.com/boakley/robotframework-pageobjectlibrary  

Udemy Course >> WEB Testing Avançado >> Follow use the page object:  
https://www.udemy.com/course/automacao-de-testes-com-robot-framework-avancado  
