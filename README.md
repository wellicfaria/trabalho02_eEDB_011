# trabalho02_eEDB_011

Trabalho 02 ministrado pelo professor Leandro Mendes Ferreira no segundo semestre de 2022 - Ingestão de Dados.

O trabalho consiste em ingerir dados de um CSV e uma API utilizando *python*, criar uma tabela fato utilizando esquema estrela e disponibilizar 3 gráficos utilizando dashboard.

## 🚀 Começando

Define-se as seguintes camadas: 

- 'Raw': Pasta de Códigos para dados brutos
- 'Trusted': Pasta de Códigos para Dados tratados
- 'Refined': Pasta de Códigos para Dados Dados tratados e modelados
- 'Data': Pasta para armazenar dados
- 'Source': Dados para extração
- 'Sink': Para de escrita dos códigos
- 'Stage': Pasta temporaria para processamento raw

Consulte **Implantação** para saber como implantar o projeto.

### 📋 Requerimentos

De que coisas você precisa para instalar o software e como instalá-lo?

```
        Leitura das Fontes:
            - Leitura de um csv
                - Escreve na RAW 
            - Leitura de uma API
                 - Escreve na RAW
        Limpar os dados:
            - Le os dados das RAW, escreve na  pasta TRUSTED fazendo a LIMPEZA DOS DADOS.
        Consumo:
            - Do TRUSTED, se insere no banco de dados realizando modelagem(star schema). Sendo categoriazado como refined, modelo STAR SCHEMA em SQL no banco nomeado como DW, 
        Camanda de Visualização: 
            - 3 gráficos desenhados no grafana.  
```

### 🔧 Instalação

Uma série de exemplos passo-a-passo que informam o que você deve executar para ter um ambiente de desenvolvimento em execução.

Iniciando o Banco de Dados Banco MYSQL

```
docker pull mysql

docker run --name db_mysql --expose=3306 -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=DW -e MYSQL_USER=admin -e MYSQL_PASSWORD=123456 mysql:latest
```
Pegar o IP: 
```
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' db_mysql
```

Alterar o arquivo `refined/util/dbmysql.py` com ip do banco, se necessário. 


Rodar as Cargas: 
```
chmod 777 /workspaces/trabalho02_eEDB_011/orquestrador.sh
```

Executar:
```
./orquestrador.sh
```


### 🔩 Análise dos testes de ponta a ponta

Acessando do banco para fazer SQL: 
Senha = 123456

```
docker exec -it  db_mysql bash

mysql -uroot -p
```

### 🔩 Dashboard

Utilizando o grafana e acessando o database local, tem-se:

![Grafana](/data/images/Dash.png)

Para configurar o grafana utiliza-se 'grafana_dashboard/JSON_GRAFANA.json'

### 🛠️ Construído com

* [Docker](https://www.docker.com/) - Utilizado para repositório
* [Python](https://www.python.org/) - Linhas de código utilizado para programação;
* [PySpark](https://spark.apache.org/docs/latest/api/python/) - Utilizado para ETL dos dados;
* [MySQL](https://www.mysql.com/) - Utilizado para ETL dos dados;
* [Grafana](https://grafana.com/) - Programa para desenvolvimento dos dashboards;

### ✒️ Autores

* [Rodrigo Vitorino](https://github.com/digaumlv)
* [Thais Nabe](https://github.com/thaisnabe)
* [Vitor Marques](https://github.com/vitormrqs)
* [Wellington Cassio Faria](https://github.com/wellicfaria)
* [Wesley Lourenço Barbosa](https://github.com/wesleyloubar)







