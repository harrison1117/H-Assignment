*** Settings ***
Documentation  Simple example using robot framework(rf) for API automation testing
Library   RequestsLibrary
Library   Collections
Library   assignment_info.py

*** Variables ***
${Base_URL}         https://gorest.co.in/public/v2
${API_path_user}    users
${Content Type}     application/json
${Token}            Bearer 5754e5848c32b7293faa2309eda3b91c46f3ee0a7c6b84c2fb89404d10866899

*** Test Cases ***
Test Case - API - 1.01 - Create a new user then valid user info
    [Setup]    Create Session   API session   ${Base_URL}    verify=true
    [Tags]     API
    ${reg_headers}   Create Dictionary    Content-Type=${Content Type}    Authorization=${Token}
    ${user_info}     User Info Creation
    ${user_name}     Set Variable    ${user_info}[name]
    ${user_email}    Set Variable    ${user_info}[email]
    ${create_res}    POST On Session      API session    ${API_path_user}    headers=${reg_headers}  json=${user_info}
    ${id}   Set Variable     ${create_res.json()}[id]
    Length Should Be        1${id}    8
    ${get_res}       GET On Session    API session     ${API_path_user}/${id}     headers=${reg_headers}
    ${get_name}    Set Variable    ${get_res.json()}[name]
    ${get_email}   Set Variable    ${get_res.json()}[email]
    Should Be Equal    ${user_name}    ${get_name}
    Should Be Equal    ${user_email}   ${get_email}
    [Teardown]    Session Exists    API session