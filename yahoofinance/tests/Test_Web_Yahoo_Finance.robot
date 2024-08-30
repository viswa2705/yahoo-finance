*** Settings ***
Resource         ../resources/yahoofinance_web/page_object_create_account.robot
Resource         ../resources/yahoofinance_web/page_object_home.robot

Test Setup      Setup browser
Test Teardown   Close browser

Force Tags      Regression

*** Variables ***

${Year}             1986
${Month}            May
${Date}             11
&{newacocunt_details}        first_name=testuser1     last_name=testlastuser1      email=test+adm3     password=Testuser123@




*** Test Case ***
YAHOO-CREATE-ACCOUNT: Create Yahoo Account
    [Tags]                Create_accunt

    Wait for login page
    Click on Sign in Button
    Wait for create account page
    Click on Create Account Button
    Wait for create account header
    Enter First Name        ${newacocunt_details['first_name']}
    Enter Last Name         ${newacocunt_details['last_name']}
    Enter Email Address     ${newacocunt_details['email']}
    Enter password          ${newacocunt_details['password']}
    Select Month in Date of Birth       ${Month}
    Enter Date in Date of Birth         ${Date}
    Enter Year in Date of Birth         ${Year}
    Click on Next Button


*** Keywords ***

