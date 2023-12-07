*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.bing.com
${BROWSER}        Chrome

*** Test Cases ***
Test Case - WEB - 3.01 - General Check
     Open Browser   ${LOGIN URL}   ${BROWSER}
     Maximize Browser Window
     Sleep    3
     Title Should Be     Bing
     [Teardown]    Close Browser
