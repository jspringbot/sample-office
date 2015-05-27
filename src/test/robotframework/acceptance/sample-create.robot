*** Settings ***
Resource    ../common-resources.robot


*** Test Cases ***
Word Creation
    [Tags]  word-create
    # capture an image
    Navigate To                     ${URL}
    ${image}=                       Element Capture Screenshot  css=#container > div.row.about > div.span4

    # start creating doc
    Word Create        
    Word Insert Text                Sample Text
    Word Insert Paragraph Break        
    Word Insert Image               ${image}
    Word Insert Page Break        
    Word Insert Hyperlink           jspringbot.org              ${URL}
    Word Save As                    ${DEST_DIR}/created.docx    DOCX
