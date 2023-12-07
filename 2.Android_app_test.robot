*** Settings ***
Documentation    Simple example using Appium and create one test case with Android emulator
Library          AppiumLibrary
Library          RequestsLibrary
Library          BuiltIn

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/ApiDemos-debug.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_APP_PACKAGE}        io.appium.android.apis



*** Test Cases ***
Test Case - APP - 2.01 - Open Android Test App
  [Tags]    APP
  open Application  http://127.0.0.1:4723  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=13
  ...  app=${ANDROID_APP}  appPackage=io.appium.android.apis  appActivity=.app.SearchInvoke
