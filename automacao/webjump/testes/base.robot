*** Settings ***
Library     Browser         timeout=30s             strict=false 
Library     ScreenCapLibrary
#strict=false  permite mais de um seletor de elementos presentes na página


*** Keywords ***


Open Session
#abre o navegador e a página inicial do site e começa a gravar
    
    New Browser                 chromium            False
    Start Video Recording
    New Page                    https://wj-qa-automation-test.github.io/qa-test/

Close Session 
#fecha o navegador, faz um screenshot e finaliza a gravação  

    ScreenCapLibrary.Take Screenshot
    Stop Video Recording
    Close Browser
    
Click Panel One
#clica nos botões solicitados

    Get Element                 //div[contains(@id,'panel_body_one')]
    Click                       //div[contains(@id,'panel_body_one')]//p//button[@id='btn_one']
    Click                       //div[contains(@id,'panel_body_one')]//p//button[@id='btn_two']
    Click                       //div[contains(@id,'panel_body_one')]//p//button[@id='btn_link']

Check Panel One
#checa se os botões foram ocultados

    Get Style                   //div[contains(@id,'panel_body_one')]//p//button[@id='btn_one']        none 
    Get Style                   //div[contains(@id,'panel_body_one')]//p//button[@id='btn_two']        none
    Get Style                   //div[contains(@id,'panel_body_one')]//p//button[@id='btn_link']       none

Click Iframe
#clica nos botões solicitados na página do iframe
    
    Click                       //button[@id='btn_one']
    Click                       //button[@id='btn_two']
    Click                       //button[@id='btn_link']
    
Check Iframe
#checa se os botões foram ocultados na página do iframe  
    
    Get Style                   //button[@id='btn_one']      none               
    Get Style                   //button[@id='btn_two']      none 
    Get Style                   //button[@id='btn_link']     none

Fill First Name
#preenche o campo first name com o nome desejado

    Get Element                  //div[contains(@id,'form_group')]//p//input[contains(@id,'first_name')]      
    Fill Text                    //div[contains(@id,'form_group')]//p//input[contains(@id,'first_name')]      Tiago
    
Check Checkbox Three
#seleciona o checkbox com option three

    Click                        //div[contains(@id,'panel_body_one')]//label[contains(.,'OptionThree')]

Select Dropdown
#seleciona o item ExempleThree na lista dropdown

    Click                        //div[contains(@id,'panel_body_one')]//select[contains(@id,'select_box')]
    Select Options By            //div[contains(@id,'panel_body_one')]//select[contains(@id,'select_box')]         value          option_three

Click Button One
#clica no botão One    
    Click                        //div[contains(@id,'panel_body_one')]//p//button[@id='btn_one']

Check Selenium Logo
#checa a presença da logo do Selennium

    Get Element                  //img[contains(@alt,'selenium')]
    
            
    


    
