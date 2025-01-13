from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from typing import List
import pandas as pd
import numpy as np
import sqlalchemy
from projeto_dani_v2 import Individual
import json
from json import JSONEncoder

app = FastAPI()

class NumpyArrayEncoder(JSONEncoder):
    def default(self, obj):
        if isinstance(obj, np.ndarray):
            return obj.tolist()
        return JSONEncoder.default(self, obj)

# Endpoint para gerar um indivíduo
"""
Endpoint home que gera horários de aulas e os retorna em um formato estruturado.
Este endpoint realiza os seguintes passos:
1. Cria um DataFrame `turmas` com nomes de turmas e horários predefinidos.
2. Lê as matérias de um arquivo CSV e preenche valores ausentes.
3. Associa matérias às suas respectivas turmas e calcula a carga horária.
4. Gera um horário individual usando um algoritmo de recozimento simulado.
5. Converte os dados do horário para um formato de dicionário para resposta.
Retorna:
    dict: Um dicionário contendo os dados do horário para turmas integrais e noturnas.
Lança:
    HTTPException: Se ocorrer algum erro durante o processo, um código de status 500 é retornado com os detalhes do erro.
"""
def home():
    try:
        # Criação das turmas
        turmas = pd.DataFrame(columns=['nome', 'materias', 'carga', 'horario'])
        turmas.loc[len(turmas.index)] = ['INI1A', [], [], 'integral']
        turmas.loc[len(turmas.index)] = ['INI1B', [], [], 'integral']
        turmas.loc[len(turmas.index)] = ['INI2A', [], [], 'integral']
        turmas.loc[len(turmas.index)] = ['INI2B', [], [], 'integral']
        turmas.loc[len(turmas.index)] = ['INI3A', [], [], 'integral']
        turmas.loc[len(turmas.index)] = ['INI3B', [], [], 'integral']
        turmas.loc[len(turmas.index)] = ['MEI1', [], [], 'integral']
        turmas.loc[len(turmas.index)] = ['MEI2', [], [], 'integral']
        turmas.loc[len(turmas.index)] = ['MEI3', [], [], 'integral']
        turmas.loc[len(turmas.index)] = ['ELI1', [], [], 'integral']
        turmas.loc[len(turmas.index)] = ['ELI2', [], [], 'integral']
        turmas.loc[len(turmas.index)] = ['ELI3', [], [], 'integral']  # 12
        turmas.loc[len(turmas.index)] = ['INF1', [], [], 'noturno']
        turmas.loc[len(turmas.index)] = ['INF2', [], [], 'noturno']
        turmas.loc[len(turmas.index)] = ['INF3', [], [], 'noturno']
        turmas.loc[len(turmas.index)] = ['MEC1', [], [], 'noturno']
        turmas.loc[len(turmas.index)] = ['MEC2', [], [], 'noturno']
        turmas.loc[len(turmas.index)] = ['MEC3', [], [], 'noturno']
        turmas.loc[len(turmas.index)] = ['ELE1', [], [], 'noturno']
        turmas.loc[len(turmas.index)] = ['ELE2', [], [], 'noturno']
        turmas.loc[len(turmas.index)] = ['ELE3', [], [], 'noturno']  # 9

        # Criação das matérias
        materias = pd.read_csv("disciplinas_arrumadas.csv", on_bad_lines='skip', sep=',')
        materias.fillna('', inplace=True)

        # Adiciona o índice da turma na coluna turma_com_ind
        for i,row in turmas.iterrows():
            turmas.at[i,"materias"] = materias.loc[(materias["turma_com_ind"] == row["nome"])].index.values#.to_numpy()
            carga = np.array([])
            for z in turmas.at[i,"materias"]:
                carga = np.concatenate((carga,np.zeros(materias.at[z,"aulas_semana"])+z), axis=None)
            turmas.at[i,"carga"] = carga

        # Criação do indivíduo
        ind = Individual().individualGenBlocks(turmas)
        ind.simulated_annealing()
        
        # Transforma os dados em numpy para serem retornados
        numpyData = {"integral": ind.b_integral['id'].tolist(), "noturno":  ind.b_noturno['id'].tolist()}
        
        # Retorna os dados
        return numpyData
    except Exception as e:
        # Retorna erro 500 caso ocorra algum erro
        raise HTTPException(status_code=500, detail=str(e))
