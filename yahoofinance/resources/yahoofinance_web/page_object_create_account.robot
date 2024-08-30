*** Settings ***
Resource     page_object_base.robot


*** Variables ***
${create_account_button}          //*[@id='createacc']
${create_account_header}          //div[@id='account-attributes-challenge']/child::h2
${fullname_label}          //*[@for='usernamereg-firstName']
${first_name_textbox}         //input[@id='usernamereg-firstName']
${last_name_textbox}  //input[@id='usernamereg-lastName']
${email_label}          //label[@for='usernamereg-userId']
${email_textbox}         //input[@id='usernamereg-userId']
${domain_name}              //input[@name='yidDomainDefault']
${password_field}      //input[@id='usernamereg-password']
${date_of_birth_label}         //div[@name='birthDate']/preceding::legend
${select_month_dob}        //select[@id='usernamereg-month']
${day_dob_textbox}        //input[@id='usernamereg-day']
${year_dob_textbox}       //input[@id='usernamereg-year']
${next_button}           //button[@id='reg-submit-button']
# Label values
${fullname_label_value}          Full name
${email_label_value}                New Yahoo email
${domain_name_value}                yahoo.com
${dob_value}                      Date of birth




*** Keywords ***
Wait for create account page

    wait until element is visible  ${create_account_button}  timeout=30  error='sign up page is not visible'

Click on Create Account Button

    wait until element is enabled  ${create_account_button}
    wait to click element           ${create_account_button}


Wait for create account header
    wait until element is visible  ${create_account_header}  timeout=30  error='create account page is not visible'

Enter First Name 
    [Arguments]     ${fname}

    wait until element is visible  ${fullname_label}
    ${fname_label}  Get Text    ${fullname_label}
    Should Be Equal As Strings    ${fname_label}    ${fullname_label_value}
    Enter Input Text                     ${first_name_textbox}  ${fname}

Enter Last Name
    [Arguments]     ${lname}

    wait until element is visible  ${last_name_textbox}
    Enter Input Text                     ${last_name_textbox}  ${lname}

Enter Email Address
    [Arguments]     ${email_add}

    wait until element is visible  ${email_label}
    ${email_address_label}  Get Text    ${email_label}
    Should Be Equal As Strings    ${email_address_label}    ${email_label_value}
    Enter Input Text                     ${email_textbox}  ${email_add}
    ${domain_value}                    Get Value  ${domain_name}
    Should Be Equal As Strings    ${domain_value}    ${domain_name_value}

Enter password
    [Arguments]     ${password}

    wait until element is enabled  ${password_field}
    Enter Input Text                     ${password_field}  ${password}

Select Month in Date of Birth
    [Arguments]     ${month}

    wait until element is visible  ${date_of_birth_label}
    ${date_of_birth_label_value}  Get Text    ${date_of_birth_label}
    Should Be Equal As Strings    ${date_of_birth_label_value}    ${dob_value}
    Click Element                 ${select_month_dob}
    Select From List By Label    ${select_month_dob}    ${month}

Enter Date in Date of Birth
    [Arguments]     ${date}

    wait until element is enabled  ${day_dob_textbox}
    Enter Input Text                     ${day_dob_textbox}  ${date}

Enter Year in Date of Birth
    [Arguments]     ${year}

    wait until element is enabled  ${year_dob_textbox}
    Enter Input Text                     ${year_dob_textbox}  ${year}

Click on Next Button

    wait until element is enabled  ${next_button}
    wait to click element                  ${next_button}

