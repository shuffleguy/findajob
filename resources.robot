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
    Press Keys    ${pesquisar}    ENTER
    Wait Until Element Is Visible     ${input}
    Click Element    ${input}

    Wait Until Element Is Visible    css=.navbar-expand-md
    Mouse Over    css=[aria-controls="collapseRight1"]

    Go To    https://careers.emeal.nttdata.com/s/jobs?language=pt_BR&pcountry=Brasil

    Sleep    3s

    Select Frame     css=#ifrmCookieBanner

    Current Frame Should Contain    Accept

    Set Focus To Element    css=.sp-banner-show

    Click Element    css=button.evSpRejectBtn

    Sleep    5s

    Wait Until Element Is Not Visible    css=.lightning-spinner
    #Select Frame     css=.cCondensedThemeLayout .mainContentArea .container-search

    Element Should Be Enabled    xpath=//div[@class="container-search cJobOfferFrida" and @data-aura-class="cJobOfferFrida"]

    
    #Clear Element Text    css=#sGlobal

    #Set Focus To Element   css=#sGlobal

    #Scroll Element Into View        css=#sGlobal

    #Wait Until Element Is Visible    css=.cCondensedThemeLayout .newHeader h1
    #Element Text Should Be        css=.cCondensedThemeLayout .newHeader h1    Jobs

    #Press Keys    css=.img-menu    TAB
    #Press Keys    css=.img-menu    TAB
    #Press Keys    css=.img-menu    TAB
    #Press Keys    css=.img-menu    TAB
    #Press Keys    css=.img-menu    TAB
    #Press Keys    css=.img-menu    TAB

    #Click Element    css=#sGlobal

    Input Text    css=.mainContentArea input.input-search    Texto



    
 

