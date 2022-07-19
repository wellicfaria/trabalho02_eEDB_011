


python3 /workspaces/trabalho02_eEDB_011/raw/api_raw.py
python3 /workspaces/trabalho02_eEDB_011/raw/file_csv_raw.py
echo "FINALIZOU RAW"

python3 /workspaces/trabalho02_eEDB_011/data/trusted/api_reclamacao
python3 /workspaces/trabalho02_eEDB_011/data/trusted/reclamacao
echo "FINALIZOU TRUSTED"


python3 /workspaces/trabalho02_eEDB_011/refined/DM_CATEGORIA.py
python3 /workspaces/trabalho02_eEDB_011/refined/DM_INDICE.py
python3 /workspaces/trabalho02_eEDB_011/refined/DM_INSTITUICAO.py
python3 /workspaces/trabalho02_eEDB_011/refined/DM_TIPO.py
python3 /workspaces/trabalho02_eEDB_011/refined/FT_INDICE_RECLAMACAO.py
echo "FINALIZOU REFINED"