*** Settings ***
Resource    ../selenium-resources.robot

*** Test Cases ***
Word Templates
    [Tags]  word-template
    Navigate To                     http://jspringbot.org/
    ${exhibit2}=                    Element Capture Screenshot  xpath=/html/body/div[2]/div[2]/div[1]/div/div[1]
    Click Link                      css=#search-menu a
    Input Text                      css=#artist_search      Log\n
    Click Button                    css=#artist_submit
    Wait For Element                css=#robot-library-keywords
    ${exhibit1}=                    Element Capture Screenshot  css=#robot-library-keywords

    # start updating the word template
    Word Open File                  classpath:templates/template.doc
    Word Replace Text               @caseId     210004146651
    Word Replace Text               @date       March 2, 2015
    Word Replace Text As Image      @exhibit1   ${exhibit1}     400     200
    Word Replace Text As Image      @exhibit2   ${exhibit2}     200     100
    Word Save As                    ${DEST_DIR}/result.doc
