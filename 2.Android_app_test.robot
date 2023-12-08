*** Settings ***
Documentation    Simple example using Appium and create one test case with Android emulator
...              Simple search a word and verify the result
Library          AppiumLibrary
Library          RequestsLibrary
Library          BuiltIn

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/ApiDemos-debug.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_APP_PACKAGE}        io.appium.android.apis
${Query}                      Hello H


*** Test Cases ***
Test Case - APP - 2.01 - Open Android Test App
  [Tags]    APP   all
    Open Application  http://127.0.0.1:4723  automationName=${ANDROID_AUTOMATION_NAME}
    ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=13
    ...  app=${ANDROID_APP}  appPackage=io.appium.android.apis  appActivity=.app.SearchInvoke
    Wait Until Element Is Visible       txt_query_prefill
    Input Text     txt_query_prefill    ${Query}
    Capture Page Screenshot
    Click Element  btn_start_search
    Wait Until Page Contains Element  android:id/search_src_text
    Element Text Should Be  android:id/search_src_text  ${Query}
    Capture Page Screenshot

