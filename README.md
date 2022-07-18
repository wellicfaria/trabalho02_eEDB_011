# trabalho02_eEDB_011

# Título do projeto

Um parágrafo da descrição do projeto vai aqui

## 🚀 Começando

Defininos as seguintes camandas: 

- Raw: Pasta de Codigos para dados brutos
- Trusted: Pasta de Codigo para Dados tratados
- Refined: Pasta de Codigo para Dados Dados tratados e modelados
- Data: Pasta para armazenar dados
-- Source: Dados para extração
-- Sink: Para de escrita dos códigos
-- stage: Pasta temporaria para processamento raw

Consulte **Implantação** para saber como implantar o projeto.

### 📋 Requerimentos

De que coisas você precisa para instalar o software e como instalá-lo?

```
    1. Separar os jobs:
        read.py
            - Leitura do csv
                - Escreve na RAW (S3)
            - Leitura da API
                 - Escreve na RAW (S3)
        clean.py
            - Impla os dados, escreve na  pasta TRUSTED (LIMPEZA DOS DADOS - dados limpos e tratados - CSV, PARQUET)
        insert_dados_bd.py
            - Do TRUSTED, deve-se jogar dentro do banco de dados realizar modelos TRUSTED para o modelo STAR SCHEMA em SQL
        Camanda de Visualização: Possível ter 3 gráficos no final do notebook. 
```

### 🔧 Instalação

Uma série de exemplos passo-a-passo que informam o que você deve executar para ter um ambiente de desenvolvimento em execução.

Diga como essa etapa será:

```
Dar exemplos
```

E repita:

```
Até finalizar
```

Termine com um exemplo de como obter dados do sistema ou como usá-los para uma pequena demonstração.

## ⚙️ Executando os testes

Explicar como executar os testes automatizados para este sistema.

### 🔩 Analise os testes de ponta a ponta

Explique que eles verificam esses testes e porquê.

```
Dar exemplos
```

### ⌨️ E testes de estilo de codificação

Explique que eles verificam esses testes e porquê.

```
Dar exemplos
```

## 📦 Desenvolvimento

Adicione notas adicionais sobre como implantar isso em um sistema ativo

## 🛠️ Construído com

Mencione as ferramentas que você usou para criar seu projeto

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - O framework web usado
* [Maven](https://maven.apache.org/) - Gerente de Dependência
* [ROME](https://rometools.github.io/rome/) - Usada para gerar RSS

## 🖇️ Colaborando

Por favor, leia o [COLABORACAO.md](https://gist.github.com/usuario/linkParaInfoSobreContribuicoes) para obter detalhes sobre o nosso código de conduta e o processo para nos enviar pedidos de solicitação.

## 📌 Versão

Nós usamos [SemVer](http://semver.org/) para controle de versão. Para as versões disponíveis, observe as [tags neste repositório](https://github.com/suas/tags/do/projeto). 

## ✒️ Autores

Mencione todos aqueles que ajudaram a levantar o projeto desde o seu início

* **Um desenvolvedor** - *Trabalho Inicial* - [umdesenvolvedor](https://github.com/linkParaPerfil)
* **Fulano De Tal** - *Documentação* - [fulanodetal](https://github.com/linkParaPerfil)

Você também pode ver a lista de todos os [colaboradores](https://github.com/usuario/projeto/colaboradores) que participaram deste projeto.

## 📄 Licença

Este projeto está sob a licença (sua licença) - veja o arquivo [LICENSE.md](https://github.com/usuario/projeto/licenca) para detalhes.

## 🎁 Expressões de gratidão

* Conte a outras pessoas sobre este projeto 📢
* Convide alguém da equipe para uma cerveja 🍺 
* Obrigado publicamente 🤓.
* etc.








