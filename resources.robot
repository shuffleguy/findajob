*** Settings ***
Library    SeleniumLibrary    timeout=15s
Library    Process

*** Variables ***
${url_google}         https://www.google.com/
${pesquisar}          css=#APjFqb
${input}              xpath=//h3[text()="NTT DATA: Global IT Services Provider & Consultant"]  



*** Test Cases ***
Abrir Página do Google
    Open Browser    url=${url_google}    browser=chrome        options=add_experimental_option('excludeSwitches', ['enable-logging'])
    Maximize Browser Window
    Wait Until Element Is Visible    ${pesquisar}  

Pesquisar NTT
    Input Text    ${pesquisar}    ntt data
    Wait Until Element Is Visible 
    Click Element    ${input}



    
 

