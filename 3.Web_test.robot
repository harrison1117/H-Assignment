*** Settings ***
Documentation     Simple example using SeleniumLibrary including one positive and negative test case
Library           SeleniumLibrary
Library           assignment_info.py
Suite Teardown    Close Browser
*** Variables ***
${LOGIN URL}      https://www.bing.com
${BROWSER}        Chrome
${SEARCH}         b_tween_searchResults
${Timeout}        10

*** Test Cases ***
Test Case - WEB - 3.01 - Verify the search results with Bing
     [Tags]    WEB
     Open Browser   ${LOGIN URL}    ${BROWSER}
     Maximize Browser Window
     Go To    ${LOGIN URL}/search?q=q
     Title Should Be     q - Search
     Wait Until Element Is Visible    id:${SEARCH}   ${Timeout}
     ${res count}  Get Text    id:${SEARCH}
     Log To Console    ${res count}

Test Case - WEB - 3.02 - Negative - Check wrong text
    Go To    ${LOGIN URL}/search?q=H
    Title Should Be     H - Search
    Wait Until Element Is Visible    id:${SEARCH}   ${Timeout}
    ${search res}  Get Text    id:${SEARCH}
    ${res int}     Extract Number From Search Result    ${search res}
    ${verify res}=   Evaluate     ${res int} > 1
    Should Not Be True    ${verify res}
    

    
