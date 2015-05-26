*** Settings ***
Resource    ../common-resources.robot


*** Test Cases ***
Word Creation
    [Tags]  word-create
    # capture an image
    Navigate To                     ${URL}
    ${image}=                       Element Capture Screenshot  xpath=/html/body/div[2]/div[2]/div[1]/div/div[1]

    # start creating doc
    Word Create        
    Word Insert Text                Sample Text
    Word Insert Paragraph Break        
    Word Insert Image               ${image}
    Word Insert Page Break        
    Word Insert Hyperlink           jspringbot.org              ${URL}
    Word Save As                    ${DEST_DIR}/created.docx    DOCX
