
*** Settings ***
Documentation              Open application, Close Application, etc 
# DIGUNAKAN UNTUK IMPORT APPIUM LIBRARY FILE LAIN/MODUL
Library                    AppiumLibrary


*** Variables ***
# UNTUK MENDEFINISIKAN VARIABLE YANG DIGUNAKAN DALAM TEST CASE/KEYWORD\

# ${urlGoogle}            https://www.google.com

${REMOTE_URL}              http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}           Android
${PLATFORM_VERSION}        11.0
${DEVICE_NAME}             emulator-5554
${APP_PACKAGE}             com.example.myapplication
${APP_ACTIVITY}            com.example.myapplication.MainActivity


*** Keywords ***
Open Flight Application
    Open Application       ${REMOTE_URL}    
    ...                    platformName=${PLATFORM_NAME}    
    ...                    platformVersion=${PLATFORM_VERSION}    
    ...                    deviceName=${DEVICE_NAME}
    ...                    appPackage=${APP_PACKAGE}
    ...                    appActivity=${APP_ACTIVITY}
    
Close Flight Application
    Close All Applications
