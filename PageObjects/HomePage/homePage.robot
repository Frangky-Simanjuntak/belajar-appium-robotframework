*** Settings ***
Documentation        Segala hal yg berkaitan dengan Home Page
Resource                ../base.robot

*** Keywords ***
Verify Home Screen Appears
    Element Should Be Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]
    

Click Sign In Button On Home Screen
    Click Element        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Verify Success Login
    # Sleep    10s #akan menunggu 10detik baru eksekusi code yang dibawahny
    # Element Should Be Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]    timeout=5s

Invalidd username/password
    Wait Until Element Is Visible    locator=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.view.ViewGroup     timeout=5s