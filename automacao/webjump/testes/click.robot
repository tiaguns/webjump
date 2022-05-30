*** Settings ***

Resource            base.robot


*** Test Cases ***


Click Panel One Buttons
    
    [Tags]                       Panel One

    Open Session

    Click Panel One
    Check Panel One                 
    
    Sleep                       2

    Close Session
    
    
Click Iframe Buttons 

    [Tags]                       Iframe

    New Browser                 chromium            False
    Start Video Recording
    New Page                    https://wj-qa-automation-test.github.io/qa-test/buttons.html

    Click Iframe
    Check Iframe

    Sleep                       2
    
    Close Session
    

Fill Field                          

    [Tags]                       Fill

    Open Session

    Fill First Name
    
    Check Checkbox Three

    Select Dropdown

    Sleep                       2

    Check Selenium Logo  

    Sleep                       2

    Close Session  



           



    
    
    
    
