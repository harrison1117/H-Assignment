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
     [Tags]    WEB    all
     Open Browser   ${LOGIN URL}    ${BROWSER}
     Maximize Browser Window
     Go To    ${LOGIN URL}/search?q=q
     Title Should Be     q - Search
     Capture Page Screenshot
     Wait Until Element Is Visible    id:${SEARCH}   ${Timeout}
     ${res count}  Get Text        id:${SEARCH}
     Capture Element Screenshot    id:${SEARCH}
     Log To Console    ${res count}

Test Case - WEB - 3.02 - Negative - Check wrong text
    [Tags]    WEB    all
    Go To    ${LOGIN URL}/search?q=H
    Title Should Be     H - Search
    Wait Until Element Is Visible    id:${SEARCH}   ${Timeout}
    Capture Page Screenshot
    ${search res}  Get Text    id:${SEARCH}
    ${res int}     Extract Number From Search Result    ${search res}
    ${verify res}=   Evaluate     ${res int} > 1
    Capture Element Screenshot    id:${SEARCH}
    Should Not Be True    ${verify res}
    

    
