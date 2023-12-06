*** Settings ***
Library  AppiumLibrary
Library   RequestsLibrary
Library  BuiltIn


*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/ApiDemos-debug.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_APP_PACKAGE}        io.appium.android.apis



*** Test Cases ***
Open Android Test App
  open Application  http://127.0.0.1:4723  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=13
  ...  app=${ANDROID_APP}  appPackage=io.appium.android.apis  appActivity=.app.SearchInvoke
