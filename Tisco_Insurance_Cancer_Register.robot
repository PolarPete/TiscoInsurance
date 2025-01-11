*** Settings ***
Resource            ..\\Tisco\\Tisco_Insurance_Cancer_Register_Resource.resource
Test Setup          Default Test Setup

*** Variables ***
${birth_date}    9
${birth_month}    สิงหาคม
${birth_year}    2540
${plan_no}    4
${title_name}    นาย
${first_name}    กนก
${last_name}     สระ
${height}    180
${weight}    90
${citizen_id}   2709900024192
${status}    Single
${tel}   0600031914
${email}   prprpr@prppmail.com
${occupation}    ทนายความ
${home_no}   44/99    
${district}    บางซื่อ

*** Test Cases ***
[TCO001] User Buy Tisco Zero Cancer Plan
    [Documentation]   User Select to buy Zero Cancer Insurance plan and fill deatail until OTP Page
    [Tags]    ZeroCancer
    Select Buying Zero Cancer Insurance
    Select And Fill Detail For Finding Insurance     ${birth_date}      ${birth_month}     ${birth_year}
    Select Insurance Plan   ${plan_no}
    Select And Fill Insured Information     ${title_name}    ${first_name}    ${last_name}   ${height}    ${weight}   ${citizen_id}   ${status}    ${tel}   ${email}   ${occupation}
    Answer Health Question
    Fill Insured Detail   ${home_no}    ${district}
    Wait For OTP