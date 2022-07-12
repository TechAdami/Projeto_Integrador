# TRABALHO DE PI:  APP para o aprendizado de inglês e espanhol (YoLearn)
Trabalho desenvolvido durante as disciplinas de desenvolvimento de sistemas e projeto integrador

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Micaelly Vitória Andrade Abraão: micaellyandrade2@gmail.com<br>
Danielly da Rocha Evangelista: daniellydarochaevangelista@gmail.com<br>
Alana Sousa Lino: alanasousalino@gmail.com<br>

...

### 2.MINIMUNDO<br>

> O sistema Yolearn conterá as informações à seguir: A tabela de Disponibilidade conterá o horario inicial e o horario final de um professor e a tabela dias armazenará o id e o nome de cada dia da semana. Uma disponibilidade pode ter vários dias da semana e um dia da semana pode ter várias disponibilidades. Para cada Professor e Aluno precisará ser armazenado id, nome, data de nascimento e email. Em Professor também será armazenada uma bio. Um Aluno pode ter mais de um professor, e um professor pode ter mais de um aluno. Em idioma será armazenado o id e nome dos idiomas disponíveis para serem ensinados e aprendidos. Um professor pode ensinar vários idiomas e um idioma pode ser ensinado por um ou mais professores. Um aluno pode aprender um ou vários idiomas e um idioma pode ser aprendido por vários alunos. O cadastro dos alunos e professores será separado e nele será armazenado o usuário e a senha. Um professor e um aluno podem ter apenas um cadastro mas um cadastro pode ter mais de um aluno e professor. Um professor pode ter várias disponibilidades durante a semana e uma disponibilidade pode ter vários professores.  
 
### 3.PMC<br>
a) inclusão do PMC desenvolvido pelo grupo <br>
Arquivo pdf: https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/PMC.pdf<br>

![Alt text](https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/PMC.png "PMC")

### 4.Personas e Histórias de usuário<br>
a) inclusão dos Personas desenvolvidos pelo grupo:<br>
Arquivo com todas as personas: https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/Personas.pdf<br>

![Alt text](https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/Persona.png "Persona")

<br>
b) inclusão das Histórias de usuário desenvolvidas pelo grupo:<br>
Arquivo com todas as histórias de usuário: https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/HU.pdf 
<br>
![Alt text](https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/HistoriaUsuario.png "HU")
<br>


### 5.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

Link p/ o protótipo navegável: https://www.canva.com/design/DAFA2zGHVJ0/r7BR0jBbJ4MLoq4oNT9m-g/view?mode=prototype<br>

![Alt text](https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/Prototipo.png "Prototipo")
<br>

#### 5.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?<br>

a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes?<br>

* Poderá fornecer informações sobre os alunos, professores e os idiomas disponíveis.
    
b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto:
    
> A YoLearn precisa inicialmente dos seguintes relatórios:

* Relatório que informe quais são as disponibilidades de cada professor incluindo as seguintes informações: nome do professor, horário de fim e horário de início.
* Relatório de alunos por idioma incluindo as seguintes informações: nome do aluno, nome do idioma, id do idioma e id do aluno.
* Relatório com a quantidade de alunos para cada professor incluindo as seguintes informações: nome do professor, id do professor, nome do aluno, id do aluno e quantidade de alunos na turma do professor.
* Relatório com a quantidade de alunos para cada idioma incluindo as seguintes informações:  nome do aluno, id do aluno, id do idioma, nome do idioma e quantidade de alunos estudando cada idioma.
* Relatório que informe quais são os dias da semana para cada disponibilidade incluindo as seguintes informações: nome do dia, id do dia,  horário de fim e horário de início.
 

### 6 TABELA DE DADOS DO SISTEMA:
    
Nossa tabela de dados: https://docs.google.com/spreadsheets/d/1NMLlTAfYdCDDFnRaV_NSS-Gvf9f6tzsIoc2n2Xghd7Y/edit?usp=sharing<br>

![Alt text](https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/TabelaDados.png "Dados")
<br>

 ### 7.MODELO CONCEITUAL: <br>

![Alt text](https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/ModeloConceitual.png "Modelo Conceitual")
<br>

PRINCIPAIS FLUXOS:<br>
* Professor ensina idioma.
* Idioma é estudado por pessoa.

#### 7.1 Descrição dos dados<br>

    PROFESSOR: Tabela que armazena as informações relativas aos professores.
    PESSOA: Tabela que armazena as informações relativas a todos os usuarios do sistema.<br>
    DISPONIBILIDADE: Tabela que armazena as informações relativas a disponilidade dos professores.
    DIAS_SEMANA: Tabela que armazena os dias da semana.<br>
    IDIOMA: Tabela que armazena os idiomas disponiveis para aprendizado e ensinamento.
    
    NOME: campo que armazena o nome do usuário cadastrado.
    ID_(nome da tabela): campo que armazena a identificação única de cada tabela.
    DAT_NASC: campo que armazena a data de nascimento de cada aluno e professor cadastrado.
    EMAIL: campo que armazena o email de cada aluno e professor cadastrado.
    BIO: campo que armazena informações de cada professor cadastrado.
    HORARIO_FIM: campo que armazena o horário final da disponibilidade de um professor.
    HORARIO_INICIO: campo que armazena o horário inicial da disponibilidade de um professor.
    NOM_DIAS: campo que armazena o nome de cada dia da semana.
    NOM_IDIOMA: campo que armazena o nome de cada idioma disponivel para o aprendizado e ensinamento.
    USUARIO: campo que armazena o usuário de um professor/aluno.
    SENHA: campo que armazena a senha de um professor/aluno.

### 8	RASTREABILIDADE DOS ARTEFATOS<br>
a) Historia de usuários vs protótipo (mockup): https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/HUxProt%C3%B3tipo.pdf<br>
        
b) Protótipo vs Modelo conceitual: https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/Prot%C3%B3tipoxModeloConceitual.pdf<br>
        
        c) Backlog (caso solicitado)
        

### 9	MODELO LÓGICO<br>

![Alt text](https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/ModeloLogico.png "Modelo Lógico")

b) modelo conceitual para verificação de correspondencia com o modelo lógico:
<br>
![Alt text](https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/ModeloConceitual.png "Modelo Conceitual")
        

### 10	MODELO FÍSICO<br>

a) inclusão das instruções de criacão das estruturas em SQL/DDL:
https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/ScriptYoLearn.sql
       
### 11	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

Arquivo .sql: https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/ScriptComInsert.sql


### 12	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 12.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 12.2 PRINCIPAIS CONSULTAS DO SISTEMA 
 Inserir as principais consultas (relativas aos 5 principais relatórios) definidas previamente no iten 3.1 deste template.
 <br>
  a) Você deve apresentar as consultas em formato SQL para cad um dos relatórios.
 <br>
  b) Além da consulta deve ser apresentada uma imagem com o resultado obtido para cada consulta.<br>
 
 #### 12.3 ANTEPROJETO VERSÃO 1<br>
 
 * VERSÃO 1 DO NOSSO ANTEPROJETO: https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/YoLearn_Anteprojeto.pdf
 
 Link para [Modelo de Anteprojeto](https://docs.google.com/document/d/1oeVS2CUffbSNYWxIWZFY_mX6E5ao_PHU/edit?usp=sharing&ouid=104104747195236161434&rtpof=true&sd=true)
 
 <br>
 <br>
 
 
 
 
 ### 13 Gráficos, relatórios, integração com Linguagem de programação e outras solicitações.<br>
     OBS: Observe as instruções relacionadas a cada uma das atividades abaixo.<br>
 #### 13.1	Integração com Linguagem de programação; <br>
 #### 13.2	Desenvolvimento de gráficos/relatórios pertinentes, juntamente com demais <br>
 #### solicitações feitas pelo professor. <br>
 #### 13.3 ANTEPROJETO VERSÃO 2
 <br>
 <br>
 
 
 ### 14 Slides e Apresentação em vídeo. <br>
     OBS: Observe as instruções relacionadas a cada uma das atividades abaixo.<br>
 #### 14.1 Slides; <br>
 #### 14.2 Apresentação em vídeo <br>
 #### 14.3 ANTEPROJETO VERSÃO FINAL
 <br>
 <br>   


    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
   
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/

#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")
