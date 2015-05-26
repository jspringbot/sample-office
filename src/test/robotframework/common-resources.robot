*** Settings ***
Library     JSpringBotGlobal

*** Keywords ***
Wait For Element
    [Arguments]                 ${locator}
    Wait Till Element Found     ${locator}

Wait For Visible
    [Arguments]                 ${locator}
    Wait Till Element Visible   ${locator}