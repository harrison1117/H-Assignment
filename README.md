## Introduction

This project include API, Android and Web simple automation test.
They can be identified by filename.


There are some prerequisites which need to be satisfied as following:
1. Install Java and Python3 and set JAVA_HOME correctly
2. Install Android Studio and Android version(10, 11 or 14) then set ANDROID_HOME correctly. Create a virtual device just in case you will do the automation with emulator.
3. Install Appium and Appium Inspector correctly, please don't forget use appium-doctor to verify the results and understand some issues may just focus on iOS or Android.
4. Use your preferred IDE(Pycharm or Visual Studio). If Pycharm is selected, please install a nice plugin. This project is used "Hyper Robotframework Support"
5. Open the terminal and install the libraries with "pip install -r requirements.txt". Other versions could be used, but pay attention about the version conflicts.
6. Driver is a must for web automation, thus correct driver with correct browser version is needed.(e.g. chromedriver -> Chrome and geckodriver -> Firefox.)
7. Please prepare your own account to get the token for API automation.


**Note: The specific operation for Mac and Windows is not the same always due to the operating system.**



## Run Cases
1. Make sure libraries is installed correctly, you could press command + click to verify if the library could be jumped.
<img width="820" alt="Screenshot 2023-12-08 at 11 55 32 AM" src="https://github.com/harrison1117/H-Assignment/assets/152993736/6fe6432f-6bd2-4601-a684-a4f1fed9ee7c">

2. If plugin is installed correctly, you could press the green arrow button to run specific test case.
<img width="662" alt="Screenshot 2023-12-08 at 12 00 08 PM" src="https://github.com/harrison1117/H-Assignment/assets/152993736/8ad0bbea-b204-4d05-970f-d2117fb95ef0">

4. Run "robot -i all .." in the terminal. This means run all the test case file with the tag name "all".

6. After robot run, the results could be found in the terminal
<img width="691" alt="Screenshot 2023-12-08 at 12 06 32 PM" src="https://github.com/harrison1117/H-Assignment/assets/152993736/1efd13e9-8020-4d82-ba29-189df1a7b664">


7. See the log for the whole run results through browser.
<img width="1439" alt="Screenshot 2023-12-08 at 12 12 24 PM" src="https://github.com/harrison1117/H-Assignment/assets/152993736/7124313c-3484-4963-9122-8671f1eb043f">




## Reference
1. https://github.com/robotframework/SeleniumLibrary
2. https://github.com/serhatbolsu/robotframework-appiumlibrary
3. http://appium.io/docs/en/2.2/quickstart/
