# OBSERVAÇÕES GERAIS
 
* O arquivo "base.robot" foi criado para facilitar  a criação de keywords, facilitando  a escrita do arquivo de teste e deixando o código mais limpo. Este arquivo é a base para a execução de todos os testes e contem todas as configurações necessárias.
 
* Foram adicionadas Tags  em cada caso de teste para facilitar a execução individual de casa caso de teste.
 
* A biblioteca Screencap foi instalada para gerar evidencias de vídeo. Além da evidencias de vídeo foram capturados Screenshots após a execução de cada caso de teste. Esses arquivos estão na pasta de evidencias do projeto.
 
## CASO DE TESTE 001
 
Crie um cenário onde clicamos nos botões "One", "Two, e "Four", depois verifique a ausência dos mesmos.
 
Nome do caso de Teste: Click Panel One Buttons
 
R: Nesse teste foi necessário encontrar um localizador único para cada botão, levando em consideração que na página existe mais de um item com o mesmo localizador.
 
Ex: //div[contains(@id,'panel_body_one')]//p//button[@id='btn_one']
 
Após clicados,  os  atributos "style" dos elementos são alterados para o valor "none", ocultando os mesmos. Utilizei este método para validar a ausência dos botões.
 
 
## CASO DE TESTE 002
 
Dentro da mesma página, clique nos botões "One", "Two" e "Four" que encontram-se dentro do painel "IFRAME BUTTONS" e valide a não-presença dos mesmos.
 
Nome do caso de Teste: Click Iframe Buttons
 
R: Nesse existe um documento html dentro da div, para executar esse teste foi aberta uma nova pagina através do link do painel separadamente, evitando assim a possibilidade de encontrar elementos duplicados. O ideal seria encontrar um localizador melhor dentro da própria página.
 
Utilizei o mesmo método do caso de teste 001 para validar a ausência dos botões.

Obs: Necessário melhorar esse teste.
 
## CASO DE TESTE 003

No cenário final, iremos preencher o campo "YourFirstName" com um texto qualquer. Clique no botão "One", cheque a opção "OptionThree", selecione a opção "ExampleTwo" dentro da select box, e valide a presença da imagem do logo do "Selenium Webdriver".
 
Nome do caso de Teste:  Fill Field
 
R: Nesse caso foi necessário novamente encontrar um localizador único para os elementos, utilizei o atributo "id" da div para especificar a localização correta que não ocorresse falhas no seletor.
 
Ex:  //div[contains(@id,'form_group')]//p//input[contains(@id,'first_name')]
 

