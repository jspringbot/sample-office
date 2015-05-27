*** Settings ***
Resource    ../common-resources.robot


*** Variables ***
${CASE_ID_REPLACEABLE}      @caseId
${DATE_REPLACEABLE}         @date
${EXHIBIT_1_REPLACEABLE}    @exhibit1
${EXHIBIT_2_REPLACEABLE}    @exhibit2


*** Test Cases ***
Word Templates
    [Tags]  word-template

    # capture the exhibit2 image
    Navigate To                     ${URL}
    ${exhibit2}=                    Element Capture Screenshot  css=#container > div.hero-unit

    # capture the exhibit1 image
    Click Link                      css=#search-menu a
    Input Text                      css=#artist_search          cord=Log|ENTER
    Click Button                    css=#artist_submit
    Wait For Visible                css=#robot-library-keywords
    ${exhibit1}=                    Element Capture Screenshot  css=#robot-library-keywords

    # start updating the word template
    Word Open File                  classpath:templates/template.doc
    Word Replace Text               ${CASE_ID_REPLACEABLE}     210004146651
    Word Replace Text               ${DATE_REPLACEABLE}        March 2, 2015
    Word Replace Text As Image      ${EXHIBIT_1_REPLACEABLE}   ${exhibit1}     400     200
    Word Replace Text As Image      ${EXHIBIT_2_REPLACEABLE}   ${exhibit2}     200     100
    Word Save As                    ${DEST_DIR}/result.doc
