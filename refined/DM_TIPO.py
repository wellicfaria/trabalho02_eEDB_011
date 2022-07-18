from pyspark.sql import SparkSession
from pyspark.sql import functions as F


PATH_TRUSTED = '/workspaces/trabalho02_eEDB_011/data/trusted/reclamacao'
TABLE_MYSQL = ''

spark = SparkSession.builder.appName("TRUSTED_CSV").config("spark.jars", "/workspaces/trabalho02_eEDB_011/drives/mysql-connector-java-8.0.22.jar").getOrCreate()

def write_mysql(df,table):

    url = 'database-1.cywcahoqjr33.us-east-1.rds.amazonaws.com'
    password = ''
    user = ''

    df.write.mode('overwrite').format("jdbc").option("url", url) \
    .option("driver", "com.mysql.jdbc.Driver").option("dbtable", table) \
    .option("user", user).option("password", password).load()


spark.read.parquet(PATH_TRUSTED).createOrReplaceTempView('file_csv')

df = spark.sql('''
    select distinct COALESCE(upper(TIPO),-1) as TIPO from file_csv
    ''')

df.show()

#write_mysql(df,TABLE_MYSQL)





