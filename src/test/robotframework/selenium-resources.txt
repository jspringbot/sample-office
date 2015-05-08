*** Settings ***
Library     JSpringBotGlobal

*** Variables ***
${POLL_MILLIS}      500
${TIMEOUT_MILLIS}    10000

*** Keywords ***
Wait For Element     [Arguments]    ${locator}
    [Documentation]     Polls every 500 or half a second and will fail when timeout is reached (10000 millis or 10 secs).
    Wait Till Element Found     ${locator}    ${POLL_MILLIS}    ${TIMEOUT_MILLIS}

Wait For Visible     [Arguments]    ${locator}
    [Documentation]     Polls every 500 or half a second and will fail when timeout is reached (10000 millis or 10 secs).
    Wait Till Element Visible     ${locator}    ${POLL_MILLIS}    ${TIMEOUT_MILLIS}