*** Settings ***
Library     JSpringBotGlobal

*** Variables ***
${URL}                      http://jspringbot.org/

*** Keywords ***
Wait For Element
    [Arguments]                 ${locator}
    Wait Till Element Found     ${locator}

Wait For Visible
    [Arguments]                 ${locator}
    Wait Till Element Visible   ${locator}