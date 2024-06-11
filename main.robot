*** Settings ***


Resource    PageObjects/HomePage/homePage.robot
Resource    PageObjects/LoginPage/loginPage.robot
# Resource    PageObjects/base.robot

# SUITE SETUP(beforeEach) => kumpulan dari tes case, di eksekusi sebelum semua Test cases dijalankan, hanya 1x
# SUITE SETUP(beforeEach) => isinya adalah     *** Keyword *** JADI Open Flight Application akan dijalankan sebelum semua *** Test Cases *** yang kita tulis dijalankan
# Suite Setup    Open Flight Application
# TEST SETUP => SEBELUM SETIAP TEST CASE DIJALANKAN, contoh jikalau ada 2 Test Cases berarti TEST SETUP akan dijalankan juga 2x
Test Setup              Open Flight Application

# TEST SETUP => AKAN DIJALANKAN LAGI SETELAH TEST CASE PERTAMA SELESAI DIJALANKAN
Test Teardown           Close Flight Application

# Suite Teardown
# Test Teardown


*** Variables ***
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_USERNAME}          support@ngendigital.commmm
${INVALID_PASSWORD}          abc123333


*** Test Cases ***
POSITIF - User Should Be Able To Login With Valid Credential
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username             username=${VALID_USERNAME}
    Input User Password        password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    


NEGATIF - User Should Be Able To Login With Invalid Credential
    # Wait Activity    activity    timeout=20        interval=10
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username             username=${INVALID_USERNAME}
    Input User Password        password=${INVALID_PASSWORD}
    Click Sign In Button On Login Screen
    Invalidd username/password
    

# Open Flight Application
# verify home screen appears
# Input username
# Input password
# Click sigin Button on login screen
# Verify