*** Settings ***
Resource     page_object_base.robot

*** Variables ***
${logo_image}          //*[@id='ybar-logo']
${sign_in_button}      //*[@id='login-container']/a


*** Keywords ***
Wait for login page

    wait until element is visible  ${logo_image}  timeout=30  error='home page not loaded'

Click on Sign in Button
    wait until element is enabled  ${sign_in_button}
    wait to click element                  ${sign_in_button}