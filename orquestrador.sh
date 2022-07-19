

echo "Inicio da etapa Raw (1/3)"
python3.8 /workspaces/trabalho02_eEDB_011/raw/api_raw.py
python3.8 /workspaces/trabalho02_eEDB_011/raw/file_csv_raw.py
echo "Fim (1/3)\n"
echo "Inicio da etapa Trusted (2/3)"
python3.8 /workspaces/trabalho02_eEDB_011/trusted/api_trusted.py
python3.8 /workspaces/trabalho02_eEDB_011/trusted/file_csv_trusted.py
echo "Fim (2/3)\n"
echo "Inicio da etapa Refined (3/3)"
python3.8 /workspaces/trabalho02_eEDB_011/refined/DM_CATEGORIA.py
python3.8 /workspaces/trabalho02_eEDB_011/refined/DM_INDICE.py
python3.8 /workspaces/trabalho02_eEDB_011/refined/DM_INSTITUICAO.py
python3.8 /workspaces/trabalho02_eEDB_011/refined/DM_TIPO.py
python3.8 /workspaces/trabalho02_eEDB_011/refined/FT_INDICE_RECLAMACAO.py
echo "Fim (3/3)\n"
echo "Finalizado com sucesso."