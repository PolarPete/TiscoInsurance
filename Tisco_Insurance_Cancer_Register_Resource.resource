*** Settings ***
Library    SeleniumLibrary
Library    Collections



*** Variables ***
##### Tisco Insurance Main Page  ######
${TS_INSURANCE_MAINPAGE}    https://www.tiscoinsure.com/health-insurance/
${ins_zero_cancer_btn_buy}      xpath=//a[contains(.,'ซื้อออนไลน์')]
#### Tisco Zeoro Cancer Insurance Main Page  ###
${zero_cancer_btn_popup}    css=.uk-modal-close
## Register area 1 ##
${reg_btn_myself}    xpath=//label[contains(.,'ตนเอง')]
${reg_btn_sex_male}    xpath=//img[@alt='เพศชาย']
${reg_dropdown_date}    xpath=//select[@name='birthDate[0]']
${reg_dropdown_date_list8}     xpath=//select[@name='birthDate[0]']//option[text()='8']
${reg_dropdown_month}    xpath=//select[@name='birthDate[1]']
${reg_dropdown_month_list8}    xpath=//option[contains(text(), 'สิงหาคม')]
${reg_dropdown_year}    xpath=//select[@name='birthDate[2]']
${reg_dropdown_year_list1999}    xpath=//option[contains(text(), '1999')]  
${reg_chk_cancer_question}    xpath=//input[@value='N']
${reg_btn_find_insurance}    xpath=//button[.='ค้นหาเเบบประกันที่ใช่']
## Register area page 2 ##
${reg_lbl_insurance_type1}    xpath=//h3[contains(.,'แผน 1')] 
${reg_lbl_insurance_type4}    xpath=//h3[contains(.,'แผน 4')]
${reg_btn_next_step}    xpath=//button[contains(.,'ขั้นตอนต่อไป')]
## Register area page 3 ##
${reg_dropdown_title_name}    xpath=//select[@name='titleName']
${reg_dropdown_first_name}    xpath=//input[@id='first-name']
${reg_dropdown_last_name}    xpath=//input[@id='last-name']
${reg_dropdown_height}    xpath=//input[@id='user-height']
${reg_dropdown_weight}    xpath=//input[@id='user-weight']
${reg_dropdown_idcard}    xpath=//input[@name='idCard']
${reg_lbl_status_single}    xpath=//label[contains(.,'โสด')]    
${reg_lbl_tel}    xpath=//input[@id='tel']
${reg_lbl_mail}    xpath=//input[@id='mail-leads']
${reg_lbl_occupation}    xpath=//select[@id='occupation']
${reg_txt_home_number}     xpath=//input[@id='currentNumber']
${reg_txt_district}    css=[aria-label='ตำบล / แขวง']
${reg_txt_district_suggestion}    xpath=//*[@id='suggestions']
${reg_chk_beneficiary_descendants}    xpath=//label[contains(.,'ทายาทตามกฎหมาย')]
${reg_chk_no_letter}   xpath=//label[contains(.,'ไม่ประสงค์รับเอกสารทางไปรษณีย์')]
${reg_chk_no_need}    xpath=//label[contains(.,'ไม่มีความประสงค์')]
${reg_lbl_wait_for_otp}    xpath=//h2[@class='uk-modal-title uk-text-center']
${reg_btn_next_step_after_insured}     css=.uk-flex-column .uk-button
${reg_btn_next_step_finish}    css=[uk-toggle='target: #modal-verify']
${reg_btn_next_step_after_health_q}    xpath=//button[.='ขั้นตอนต่อไป']

### Helath Question ###
#Q1ปัจจุบันท่านมีการประกันภัยที่ให้ความคุ้มครองโรคมะเร็งไว้กับบริษัทประกันภัยหรือไม่
${reg_lbl_q1}    xpath=//ol[@class='uk-margin-remove-bottom']/li[1]//*[contains(text(), 'ปัจจุบันท่านมีการประกันภัยที่ให้ความคุ้มครองโรคมะเร็งไว้กับบริษัทประกันภัยหรือไม่')]
${reg_chk_q1_no}    xpath=//ol[@class='uk-margin-remove-bottom']/li[1]//label[contains(.,'ไม่มี')]
#Q2บิดา มารดา พี่หรือน้องของผู้ขอเอาประกันภัย เคยเป็นหรือเสียชีวิตเนื่องจากโรคมะเร็งหรือไม่ โปรดระบุบุคคลที่เคยเป็นและโรคมะเร็งที่ได้รับการวินิจฉัย
${reg_lbl_q2}    xpath=//ol[@class='uk-margin-remove-bottom']/li[2]//*[contains(text(), 'บิดา มารดา พี่หรือน้องของผู้ขอเอาประกันภัย เคยเป็นหรือเสียชีวิตเนื่องจากโรคมะเร็งหรือไม่ โปรดระบุบุคคลที่เคยเป็นและโรคมะเร็งที่ได้รับการวินิจฉัย')]
${reg_chk_q2_no}    xpath=//ol[@class='uk-margin-remove-bottom']/li[2]//label[contains(.,'ไม่เคย / ไม่มี')]
#Q3ท่านดื่มเครื่องดื่มที่มีแอลกอฮอล์หรือไม่
${reg_lbl_q3}    xpath=//ol[@class='uk-margin-remove-bottom']/li[3]//*[contains(text(), 'ท่านดื่มเครื่องดื่มที่มีแอลกอฮอล์หรือไม่')]
${reg_chk_q3_no}    xpath=//ol[@class='uk-margin-remove-bottom']/li[3]//label[contains(.,'ไม่ดื่ม')]
#Q4ท่านสูบบุหรี่หรือไม่
${reg_lbl_q4}    xpath=//ol[@class='uk-margin-remove-bottom']/li[4]//*[contains(text(), 'ท่านสูบบุหรี่หรือไม่')]
${reg_chk_q4_no}    xpath=//ol[@class='uk-margin-remove-bottom']/li[4]//label[contains(.,'ไม่สูบ')]
#Q5ท่านเคยเป็น หรือมีอาการรับรู้ได้ด้วยตนเอง หรือเคยได้รับการวินิจฉัย หรือเคยได้รับการตรวจรักษา หรือคำแนะนำจากแพทย์เกี่ยวกับโรคความดันโลหิตสูง
${reg_lbl_q5}    xpath=//ol[@class='uk-margin-remove-bottom']/li[5]//*[contains(text(), 'ท่านเคยเป็น หรือมีอาการรับรู้ได้ด้วยตนเอง หรือเคยได้รับการวินิจฉัย หรือเคยได้รับการตรวจรักษา หรือคำแนะนำจากแพทย์เกี่ยวกับโรคความดันโลหิตสูง')]
${reg_chk_q5_no}    xpath=//ol[@class='uk-margin-remove-bottom']/li[5]//label[contains(.,'ไม่เคย / ไม่มี')]
#Q6 ระยะเวลา 5 ปีที่ผ่านมา ท่านเคยเจ็บป่วย หรือได้รับบาดเจ็บร้ายแรงที่ต้องได้รับการผ่าตัด หรือแนะนำให้ผ่าตัด หรือตรวจสอบด้วยวิธีการอัลตราซาวด์
${reg_lbl_q6}    xpath=//ol[@class='uk-margin-remove-bottom']/li[6]//*[contains(text(), 'ระยะเวลา 5 ปีที่ผ่านมา ท่านเคยเจ็บป่วย หรือได้รับบาดเจ็บร้ายแรงที่ต้องได้รับการผ่าตัด หรือแนะนำให้ผ่าตัด หรือตรวจสอบด้วยวิธีการอัลตราซาวด์')]
${reg_chk_q6_no}    xpath=//ol[@class='uk-margin-remove-bottom']/li[6]//label[contains(.,'ไม่เคย / ไม่มี')]




*** Keywords ***
Default Test Setup
    &{options}    create dictionary    headless=${False}    ignore_https_errors=${True}
    SeleniumLibrary.Open Browser    ${TS_INSURANCE_MAINPAGE}     browser=chrome
    Maximize Browser Window
    
Select Buying Zero Cancer Insurance 
    Click Element    ${ins_zero_cancer_btn_buy}
    Get New Tab Detail And Switch Window
    Close Popup Window Before Buy Insurance
    Wait Until Element Is Visible     ${reg_btn_myself}

Select And Fill Detail For Finding Insurance
    [Arguments]    ${date}    ${month}    ${year}
    Click Element    ${reg_btn_myself}
    Click Element    ${reg_btn_sex_male} 
    Scroll Element Into View    ${reg_chk_cancer_question}
    Click Element    ${reg_dropdown_date}
    Select From List By Value   ${reg_dropdown_date}    5
    Click Element    ${reg_dropdown_date}
    Wait Until Element Is Visible   ${reg_dropdown_month}
    Click Element   ${reg_dropdown_month}
    Select From List By Label    ${reg_dropdown_month}    ${month}
    Click Element   ${reg_dropdown_month}
    Wait Until Element Is Visible    ${reg_dropdown_year}
    Click Element    ${reg_dropdown_year}    
    Select From List By Label    ${reg_dropdown_year}    ${year}
    Wait Until Element Is Visible    ${reg_chk_cancer_question}   
    Click Element    ${reg_chk_cancer_question}
    Scroll Element Into View    ${reg_btn_find_insurance}
    Click Element    ${reg_btn_find_insurance}

Select Insurance Plan     
    [Arguments]    ${plan_number}
    Wait Until Element Is Visible    ${reg_lbl_insurance_type${plan_number}}
    Click Element     ${reg_lbl_insurance_type${plan_number}} 
    Wait Until Element Is Enabled     ${reg_btn_next_step}
    Scroll Element Into View    ${reg_btn_next_step}
    Sleep   3s
    Click Element     ${reg_btn_next_step}

Select And Fill Insured Information
    [Arguments]    ${title_name}    ${first_name}    ${last_name}   ${height}    ${weight}   ${citizen_id}   ${status}    ${tel}   ${email}   ${occupation}
    Scroll Element Into View    ${reg_dropdown_title_name} 
    Wait Until Element Is Visible    ${reg_dropdown_title_name}
    Click Element     ${reg_dropdown_title_name}
    Select From List By Label    ${reg_dropdown_title_name}    ${title_name} 
    Scroll Element Into View    ${reg_dropdown_first_name}
    Input Text    ${reg_dropdown_first_name}    ${first_name}
    Input Text    ${reg_dropdown_last_name}    ${last_name}
    Scroll Element Into View    ${reg_dropdown_height}
    Input Text    ${reg_dropdown_height}    ${height}
    Input Text    ${reg_dropdown_weight}    ${weight}
    Scroll Element Into View    ${reg_dropdown_idcard}
    Input Text    ${reg_dropdown_idcard}    ${citizen_id}
    Scroll Element Into View    ${reg_lbl_tel}
    Sleep    1s
    Click Element     ${reg_lbl_status_${status}}
    Input Text    ${reg_lbl_tel}     ${tel}
    Input Text    ${reg_lbl_mail}    ${email} 
    Scroll Element Into View    ${reg_lbl_occupation}
    Click Element     ${reg_lbl_occupation}  
    Select From List By Label    ${reg_lbl_occupation}     ${occupation} 
    Click Element     ${reg_lbl_occupation}


Answer Health Question
   Scroll Element Into View    ${reg_lbl_q1}
#    Wait Until Element Is Visible    ${reg_lbl_q1} 
   Sleep    1s
   Click Element     ${reg_chk_q1_no}
   Click Element     ${reg_chk_q2_no}
   Scroll Element Into View    ${reg_chk_q3_no}
   Click Element     ${reg_chk_q3_no}
   Scroll Element Into View    ${reg_chk_q4_no}
   Click Element     ${reg_chk_q4_no}
   Scroll Element Into View    ${reg_chk_q5_no}
   Click Element     ${reg_chk_q5_no}
   Scroll Element Into View    ${reg_chk_q6_no}
   Click Element     ${reg_chk_q6_no}
   Scroll Element Into View    ${reg_btn_next_step_after_health_q} 
   Click Element    ${reg_btn_next_step_after_health_q} 

Fill Insured Detail
    [Arguments]    ${home_no}    ${district}
    Wait Until Element Is Visible    ${reg_txt_home_number}
    Scroll Element Into View    ${reg_txt_home_number}
    Input Text    ${reg_txt_home_number}    ${home_no}
    Input Text    ${reg_txt_district}   ${district}
    Sleep   2s
    Click Element     ${reg_txt_district_suggestion}
    Scroll Element Into View    ${reg_chk_beneficiary_descendants}
    Click Element     ${reg_chk_beneficiary_descendants}    
    Scroll Element Into View   ${reg_chk_no_letter}
    Click Element     ${reg_chk_no_letter}
    Scroll Element Into View  ${reg_chk_no_need}
    Click Element     ${reg_chk_no_need}
    Scroll Element Into View     ${reg_btn_next_step_after_insured} 
    Click Element     ${reg_btn_next_step_after_insured} 
    Wait Until Element Is Enabled    ${reg_btn_next_step_finish} 
    Scroll Element Into View     ${reg_btn_next_step_finish}
    Sleep   2s 
    Click Element     ${reg_btn_next_step_finish} 

Wait For OTP    
   Wait Until Element Is Visible    ${reg_lbl_wait_for_otp} 
   Sleep    5s

Get New Tab Detail And Switch Window
    ${windows}=    Get Window Handles
    ${new_window}=    Get From List    ${windows}    1
    Switch Window    ${new_window}





#------------------------------------------------------------------

Default Test Teardown
    SeleniumLibrary.Capture Page Screenshot
    Close All Browser



Select login button on Headbar
   Wait Until Element Is Visible   ${MP_Login_Btn}
   Click Element       ${MP_Login_Btn}



Wait for login box loaded
    [Documentation]  wait for login box
    Wait Until Element Is Visible     ${MP_LoginBox_lbl_Login}          
    Wait Until Element Is Visible     ${MP_LoginBox_lbl_Email}      

    Wait Until Element Is Visible     ${MP_LoginBox_lbl_Login-reg} 
    Capture Page Screenshot


Login With Wrong Email And Wrong Password
    [Documentation]   Login With Wrong Email And Wrong Password
    [Arguments]    ${Email}=vvvv_5429@gmail.com    ${Password}=Ab12345678
    Run keyword and Ignore Error     Close the Popup window before login page
    Select login button on Headbar    
    Wait for login box loaded
    Clear Element Text   ${MP_LoginBox_txt_Email} 
    Clear Element Text   ${MP_LoginBox_txt_Password} 
    Input Text    ${MP_LoginBox_txt_Email}       ${Email}
    Input Password  ${MP_LoginBox_txt_Password}     ${Password}
    Run Async Keywords  Click Element    ${MP_LoginBox_btn_SubmitLogin} 
    ...  AND  Wait For Request Url  ${Login_API}  POST
    ...  AND  Wait For Response Url  ${Login_API}  401
    sleep   4s


Close Popup Window Before Buy Insurance
    [Documentation]  Close Terms and Conditions Popup
    ${is_close_popup_btn_visible}   Run Keyword And Return Status    Wait Until Element Is Visible    ${zero_cancer_btn_popup}    20s
    Run Keyword If  "${is_close_popup_btn_visible}"=="True"   Click Element   ${zero_cancer_btn_popup}   
    