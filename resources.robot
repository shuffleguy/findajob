*** Settings ***
Library    SeleniumLibrary    timeout=15s
Library    Process

*** Variables ***
${url_google}         https://www.google.com/

*** Test Cases ***
Abrir Página do Google
    Open Browser    url=${url_google}    browser=chrome        options=add_experimental_option('excludeSwitches', ['enable-logging'])
    Maximize Browser Window

