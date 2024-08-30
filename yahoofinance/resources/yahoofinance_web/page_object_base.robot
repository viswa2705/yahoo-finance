*** Settings ***
Resource      ../../libs/Web_Settings.robot
Library       DateTime
Library       String
Resource         ../../libs/RandomData.py


*** Variables ***



*** Keywords ***

Setup browser
    [Arguments]                ${login_url}=${YAHOO_FIN_HOME}

    Set Selenium timeout       ${UI_TIMEOUT}s
    # support remote url for browser stack
    open browser  ${login_url}  browser=${BROWSER}
   # support headless browsers
    run keyword if  '${BROWSER}'=='headlesschrome' or '${BROWSER}'=='headlessfirefox'  Set Window Size  ${B_WIDTH}  ${B_HEIGHT}
    ...  ELSE  run keyword and return  maximize browser window


Enter Input Text
    [Arguments]                         ${xpath}  ${value}

    input text                          ${xpath}  ${value}${\n}


wait to click element
    [Arguments]                         ${locator}  ${max_waittime}=10s  ${interval}=2s

    wait until element is enabled       ${locator}
    scroll element into view            ${locator}
    wait until keyword succeeds         ${max_waittime}  ${interval}  click element  ${locator}

