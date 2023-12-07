*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.bing.com
${BROWSER}        Chrome

*** Test Cases ***
Test Case - WEB - 3.01 - General Check
     Open Browser   ${LOGIN URL}   ${BROWSER}
     Title Should Be     Bing
