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

> O sistema Yolearn conterá as informações à seguir: A tabela de Disponibilidade conterá dias da semana e horários. Cada horário precisa ter um professor, e um professor pode ter vários horários. Em Professor e Aluno serão armazenados nome, data de nascimento, email, id e senha. Em Professor também é armazenada uma descrição. Um Aluno pode ter mais de um professor, e cada professor pode ter vários alunos. Um aluno pode estudar nenhum ou vários idiomas, e um idioma precisa ter pelo menos um aluno. Um professor pode ensinar nenhum ou vários idiomas, e cada idioma precisa ter pelo menos um professor. Do Cadastro será armazenado o usuário e a senha. Cada aluno possui apenas um cadastro. Em Idioma será armazenado Inglês e Espanhol. 
 
 
### 3.PMC<br>
a) inclusão do PMC desenvolvido pelo grupo <br>
Nosso PMC: https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/PMC.pdf<br>

### 4.Personas e Histórias de usuário<br>
a) inclusão dos Persons desenvolvidos pelo grupo:<br>
Nossas personas: https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/Personas.pdf<br>
<br>
b) inclusão das Histórias de usuário desenvolvidas pelo grupo:<br>
Nossas histórias de usuário: https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/HU.pdf <br>
<br>


### 5.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

Nosso protótipo: https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/prot%C3%B3tipo_YoLearn.pdf<br>

#### 5.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que informe quais são os gerentes de cada departamento incluindo as seguintes informações: número do departamento,  nome do departamento, e nome do gerente.
* Relatório de empregados por projeto incluindo as seguintes informações: número do projeto, nome do projeto, rg do empregado, nome do empregado e quantidade de horas de trabalho do empregado alocadas ao projeto.
* Relatório de empregados com dependentes incluindo as seguintes informações: rg do empregado, nome do empregado, nome do dependente, tipo de relação, data de nascimento do dependente e sexo do dependente.
* Relatório com a quantidade de empregados por cada departamento incluindo as seguintes informações: nome do departamento, supervisor e quantidade de empregados alocados no departamento.
* Relatório de supervisores e supervisionados incluindo as seguintes informações: nome do supervisor e nome do supervisionado.
 

### 6 TABELA DE DADOS DO SISTEMA:
    
Nossa tabela de dados: <br>

 ### 7.MODELO CONCEITUAL: <br>
   
Nosso modelo conceitual: 
        
![Alt text] (https://github.com/TechAdami/Projeto_Integrador/blob/main/arquivos/Modelo_Conceitual.png "Modelo Conceitual")
      
#### 7.1 Descrição dos dados<br>

    PROFESSOR: Tabela que armazena as informações relativas aos professores.<br>
    ALUNO: Tabela que armazena as informações relativas aos alunos.<br>
    CADASTRO_PROFESSOR: Tabela que armazena as informações relativas ao cadastro dos professores.<br>
    CADASTRO_ALUNO: Tabela que armazena as informações relativas ao cadastro dos alunos.<br>
    DISPONIBILIDADE: Tabela que armazena as informações relativas a disponilidade dos professores.<br>
    DIAS: Tabela que armazena os dias da semana.<br>
    IDIOMA: Tabela que armazena os idiomas disponiveis para aprendizado e ensinamento.<br>
    
    NOME: campo que armazena o nome de cada aluno e professor cadastrado.<br>
    ID: campo que armazena a identificação única de cada tabela.<br>
    DAT_NASC: campo que armazena a data de nascimento de cada aluno e professor cadastrado.<br>
    EMAIL: campo que armazena o email de cada aluno e professor cadastrado.<br>
    BIO: campo que armazena informações de cada professor cadastrado.<br>
    HORARIO_FIM: campo que armazena o horário final da disponibilidade de um professor.<br>
    HORARIO_INICIO: campo que armazena o horário inicial da disponibilidade de um professor.<br>
    NOM_DIAS: campo que armazena o nome de cada dia da semana.<br>
    NOM_IDIOMA: campo que armazena o nome de cada idioma disponivel para o aprendizado e ensinamento.<br>
    USUARIO_PROF/ALUNO: campo que armazena o usuário de um professor/aluno.<br>
    SENHA_PROF/ALUNO: campo que armazena a senha de um professor/aluno.<br>

### 8	RASTREABILIDADE DOS ARTEFATOS<br>
        a) Historia de usuários vs protótipo (mockup)
        b) Protótipo vs Modelo conceitual
        (não serão aceitos modelos que não estejam em conformidade)
        c) Backlog (caso solicitado)
        

### 9	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 10	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
        
       
### 11	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados 
 <br> + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 12	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 12.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 12.2 PRINCIPAIS CONSULTAS DO SISTEMA 
 Inserir as principais consultas (relativas aos 5 principais relatórios) definidas previamente no iten 3.1 deste template.
 <br>
  a) Você deve apresentar as consultas em formato SQL para cad um dos relatórios.
 <br>
  b) Além da consulta deve ser apresentada uma imagem com o resultado obtido para cada consulta.<br>
 #### 12.3 ANTEPROJETO VERSÃO 1
 
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
