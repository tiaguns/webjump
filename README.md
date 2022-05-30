

# 1. FERRAMENTAS UTILIZADAS
 
* SISTEMA OPERACIONAL WINDOWS 11 64BITS
 
* PYTHON (Versão 3.10.4)           
Download: https://www.python.org/downloads/            
 
* ROBOT FRAMEWORK (Versão 5.0.1)
 
* VSCODE (Versão 1.67.2)            
Download: https://code.visualstudio.com/download
 
* NODE JS (Versão 16.3)
 Download: https://nodejs.org/en/download/

* BROWSER LIBRARY
 
* SCREENCAP LIBRARY (GERA EVIDENCIAS DE VIDEO)

* CONSOLE EMULATOR CMDER
Download: https://github.com/cmderdev/cmder/releases/download/v1.3.19/cmder.zip


# 2. CONFIGURAÇÃO DO AMBIENTE
 
PASSO A PASSO PARA INSTALAÇÃO E CONFIGURAÇÃO DO AMBIENTE
 
## INSTALAÇÃO PYTHON
 
1.	Executar o arquivo de instalação que foi baixado no link indicado anteriormente;
2.	Na tela seguinte, selecionar as duas caixas com as seguintes opções:
 
Install launcher for all users
 Add Python 3.10 to PATH (IMPORTANTE: para adicionar o Python nas variáveis de ambiente)
 
3.	Clicar em Customize Installation;
4.	Na tela seguinte (Optional Features), deixe todas as opções selecionadas;
5.	Na próxima tela (Advanced Options), além das opções marcadas por padrão, selecione as seguintes opções:
 
Install for all users
Precompile standard Library
Obs: Sugiro alterar o caminho de instalação para a raiz do disco (C:)
 
6.	Clicar em Install e aguarde a conclusão da instalação;
 
## INSTALAÇÃO VSCODE
 
1.	Executar o arquivo de instalação que foi baixado no link indicado;
2.	Na tela seguinte aceito os termos de contrato e clique em próximo;
3.	Na tela a seguir mantenha o caminho padrão de instalação (opcional), e clique em próximo;
4.	Selecione todas opções e clique em próximo (a criação de atalhos é opcional)
5.	Clique em instalar e aguarde a conclusão do processo.
 
 
## INSTALAÇÃO NODE JS
 
1.	Executar o arquivo de instalação que foi baixado no link indicado anteriormente;
2.	Na tela seguinte clique em next;
3.	Aceite os termos de contrato e clique em next;
4.	Selecione a opção next novamente;
5.	Deixe toas as opções padrão selecionada, não é necessário alterar nada;
6.	Clique em next novamente;
7.	Clique em Install e aguarde a finalização da instalação.
 
 
## INSTALAÇÃO ROBOT FRAMEWORK
 
1.	Abra o Console Emulator
2.	Digite o seguinte comando:  pip install robotframework
3.	Aguarde alguns segundos e  o software será instalado.
 
 
 
## INSTALAÇÃO DA BIBLIOTECA BROWSER
 
1.	Abra o Console Emulator
2.	Digite o seguinte comando:  pip install robotframework-browser
3.	Digite o comando: rfbrowser init     ( para iniciar a biblioteca)
4.	Aguarde alguns segundos e a biblioteca será instalado.
 
 
## INSTALAÇÃO DA BIBLIOTECA SCREENCAP
 
 
1.	Abra o Console Emulator
2.	Digite o seguinte comando:  pip install --upgrade robotframework-screencaplibrary
3.	Aguarde alguns segundos e a biblioteca será instalado.

# 3. OBSERVAÇÕES GERAIS
 
* O arquivo "base.robot" foi criado para facilitar  a criação de keywords, facilitando  a escrita do arquivo de teste e deixando o código mais limpo. Este arquivo é a base para a execução de todos os testes e contém todas as configurações necessárias.
 
* Foram adicionadas Tags  em cada caso de teste para facilitar a execução individual de casa caso de teste.
 
* A biblioteca Screencap foi instalada para gerar evidências de vídeo. Além da evidências de vídeo foram capturados Screenshots após a execução de cada caso de teste. Esses arquivos estão na pasta de evidencias do projeto.
 
## CASO DE TESTE 001
 
Crie um cenário onde clicamos nos botões "One", "Two, e "Four", depois verifique a ausência dos mesmos.
 
Nome do caso de Teste: Click Panel One Buttons
 
R: Nesse teste foi necessário encontrar um localizador único para cada botão, levando em consideração que na página existe mais de um item com o mesmo localizador.
 
Ex: //div[contains(@id,'panel_body_one')]//p//button[@id='btn_one']
 
Após clicados,  os  atributos "style" dos elementos são alterados para o valor "none", ocultando os mesmos. Utilizei este método para validar a ausência dos botões.
 
 ![screenshot_1](https://user-images.githubusercontent.com/99138821/171045200-73bf5aca-edff-4117-920b-4941ef4f3eff.png)


https://user-images.githubusercontent.com/99138821/171045361-df107af5-c57c-47e2-8e27-2639f4c35fc2.mp4


## CASO DE TESTE 002
 
Dentro da mesma página, clique nos botões "One", "Two" e "Four" que se encontram no painel "IFRAME BUTTONS" e valide a não-presença dos mesmos.
 
Nome do caso de Teste: Click Iframe Buttons
 
R: Nesse existe um documento html dentro da div, para executar esse teste foi aberta uma nova pagina através do link do painel separadamente, evitando assim a possibilidade de encontrar elementos duplicados. O ideal seria encontrar um localizador melhor dentro da própria página.
 
Utilizei o mesmo método do caso de teste 001 para validar a ausência dos botões.

Obs: Necessário melhorar esse teste.
 ![screenshot_2](https://user-images.githubusercontent.com/99138821/171045780-c19008fd-6ae5-418c-9edc-67e8f2429ccf.png)


https://user-images.githubusercontent.com/99138821/171045782-48d2ca5a-4495-4bb5-9aba-72a57edc6862.mp4


## CASO DE TESTE 003

No cenário final, iremos preencher o campo "YourFirstName" com um texto qualquer. Clique no botão "One", cheque a opção "OptionThree", selecione a opção "ExampleTwo" dentro da select box, e valide a presença da imagem do logo do "Selenium Webdriver".
 
Nome do caso de Teste:  Fill Field
 
R: Nesse caso foi necessário novamente encontrar um localizador único para os elementos, utilizei o atributo "id" da div para especificar a localização correta que não ocorresse falhas no seletor.
 
Ex:  //div[contains(@id,'form_group')]//p//input[contains(@id,'first_name')]
 
![screenshot_3](https://user-images.githubusercontent.com/99138821/171045810-56125bad-27ea-47a6-b91f-2a25c2a3ab0d.png)



https://user-images.githubusercontent.com/99138821/171045824-76c9df09-ccc6-48cb-831d-c6e5c89caa51.mp4
