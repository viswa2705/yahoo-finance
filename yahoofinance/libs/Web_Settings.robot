*** Settings ***
Library     SeleniumLibrary
Variables   config.py

*** Variables ***
${ENV}               QA
${BROWSER}           chrome
${B_VERSION}         18.0
${PLATFORM}          Windows
${P_VERSION}         10
${YAHOO_FIN_HOME}        https://${HOST}
${B_WIDTH}           1600
${B_HEIGHT}          960
${CAPABILITIES}      browser:${BROWSER},browser_version=${B_VERSION},os:${PLATFORM},os_version:${P_VERSION},resolution:${B_WIDTH}x${B_HEIGHT}

# label
