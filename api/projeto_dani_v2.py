#Importação da biblioteca pandas para análise do csv
import pandas as pd
#Importaçaõ da biblioteca numpy para manipulação matrizes
import numpy as np
#Importação da biblioteca random para ações aleatórias
import random
#Importação da biblioteca copy para copiar informações
import copy
#Importação da biblioteca pscopg2 para conexão e manipulação do banco de dados
import psycopg2

#Informações de conexão com o Banco de dados
SERVER = ''
DATABASE = ''
USERNAME = ''
PASSWORD = ''
#Conexão com o banco de dados
conn = psycopg2.connect(database=DATABASE, user=USERNAME, host=SERVER, password=PASSWORD, port=5432)
cursor = conn.cursor()
#Execução de query select do banco
cursor.execute("SELECT * FROM atribuicao")#Teste do banco
record = cursor.fetchall()
#Print da resposta do banco para teste das das informações do banco.
print(record)

#Criação da classe Individual
class Individual():
    #Chamada do construtor
    def __init__(self):
        #Definição dos atributos da classe
        self.mat_dtype = np.dtype([
            ('id', int),
            ('fitness', np.int8),
            ('alterado', bool),
            ('id_professores', object),
            ('quant_labs', np.int8),
            ('id_labs', object)
        ])
        #Inicializaçõa dos atributos
        self.verifica_labs_dtype = np.dtype([('id_labs', int), ('counts', np.int8), ('taken', int)])
        self.noturno = np.zeros((9, 20), dtype=self.mat_dtype)
        self.noturno['id'] -= 1
        self.noturno['alterado'] = True
        self.noturno['id_professores'] = [[[] for _ in range(20)] for _ in range(9)]
        self.noturno['id_labs'] = None
        self.integral = np.zeros((12, 56), dtype=self.mat_dtype)
        self.integral['id'] -= 1
        self.integral['alterado'] = True
        self.integral['id_professores'] = [[[] for _ in range(56)] for _ in range(12)]
        self.integral['id_labs'] = None
        self.best_fitness = np.inf
        self.b_integral = None
        self.b_noturno = None

    #Método deração de indivíduos antigo, não mais utilizado
    def individualGen(self, turmas):
        for matrix, horario in [[self.noturno, "noturno"], [self.integral, "integral"]]:
            for i, row in turmas.loc[turmas["horario"] == horario].reset_index(drop=True).iterrows():
                carga = np.copy(row["carga"]).tolist()
                cont = 0
                while len(carga):
                    id_materia = carga.pop(random.randint(0, len(carga) - 1))
                    matrix[i][cont]['id'] = id_materia
                    matrix[i][cont]['id_professores'] = list(map(int, materias.at[id_materia, "id_professor"].split(",")))
                    matrix[i][cont]['quant_labs'] = materias.at[id_materia,"qntd_lab"]
                    cont += 1
        return self
    #Método de geração de indivíduos por bloco de maatérias reduzindo a distância entre elas
    def individualGenBlocks(self, turmas):
        for matrix, horario in [[self.noturno, "noturno"], [self.integral, "integral"]]:
            for i, row in turmas.loc[turmas["horario"] == horario].reset_index(drop=True).iterrows():
                carga, total = np.unique(np.copy(row["carga"]).tolist(), return_counts=True)
                cont = 0
                while len(carga):
                    #Escolha da matéria para preenchimento
                    rand = random.randint(0, len(carga) - 1)
                    id_materia = carga[rand]
                    carga = np.delete(carga, rand)
                    #Preenchimento dos atributos
                    for _ in range(total[rand]):
                        matrix[i][cont]['id'] = id_materia
                        matrix[i][cont]['id_professores'] = list(map(int, materias.at[id_materia, "id_professor"].split(",")))
                        matrix[i][cont]['quant_labs'] = materias.at[id_materia,"qntd_lab"]
                        if matrix[i][cont]['quant_labs'] > 0:
                            matrix[i][cont]['id_labs'] = list(map(int, materias.at[id_materia, "lab"].split(",")))
                        cont += 1
                    total = np.delete(total,rand)
        self.arrumarAulasTarde()
        
        return self
    #Método para configuração das aulas da tarde
    def arrumarAulasTarde(self):
        dias = np.zeros(5)
        for i in range(len(self.integral)):
            #Definição das requisições de dias
            requisicao = 0
            for dia in self.integral[i]["id"][36:].reshape(5,4):
                if np.mean(dia) != -1:
                    requisicao += 1
                else:
                    break
            c = np.zeros(5)+1
            for r in range(requisicao):
                #Definição dos índices que podem ser escolhidos
                valid_indices = np.where((dias == np.min(dias)) & (c == 1))[0]
                rand = random.choice(valid_indices)
                c[rand] -= 1
                dias[rand] += 1
            f = np.where(c == np.min(c))[0]
            aux = np.copy(self.integral[i][36:len(f)*4+36].reshape(len(f),4))
            #Reinicialização da célula trocado
            self.integral[i]['id'][36:] = -1
            self.integral[i]['id_professores'][36:] = [[] for _ in range(20)]
            self.integral[i]['id_labs'][36:] = None
            self.integral[i]['quant_labs'][36:] = 0
            for n,b in enumerate(f):
                self.integral[i][36+4*b:40+4*b] = aux[n]
    #Métodos para retornar todas as aulas de manhã
    def getManha(self):
        return self.integral.T[:36].T

    #Métodos para retornar todas as aulas de tarde 
    def getTarde(self):
        return self.integral.T[36:].T
    #Métodos para retornar todas as aulas de segunda
    def getSegunda(self):
        return np.concatenate((self.integral.T[:6].flatten(),
                               self.integral.T[36:40].flatten(),
                               self.noturno.T[:4].flatten()))
    #Métodos para retornar todas as aulas de terça
    def getTerca(self):
        return np.concatenate((self.integral.T[6:12].flatten(),
                               self.integral.T[40:44].flatten(),
                               self.noturno.T[4:8].flatten()))
    #Métodos para retornar todas as aulas de quarta
    def getQuarta(self):
        return np.concatenate((self.integral.T[12:18].flatten(),
                               self.integral.T[44:48].flatten(),
                               self.noturno.T[8:12].flatten()))
    #Métodos para retornar todas as aulas de quinta
    def getQuinta(self):
        return np.concatenate((self.integral.T[18:24].flatten(),
                               self.integral.T[48:52].flatten(),
                               self.noturno.T[12:16].flatten()))
    #Métodos para retornar todas as aulas de sexta
    def getSexta(self):
        return np.concatenate((self.integral.T[24:30].flatten(),
                               self.integral.T[52:56].flatten(),
                               self.noturno.T[16:20].flatten()))
    #Métodos para retornar todas as aulas de sábado
    def getSabado(self):
        return self.integral.T[30:36].flatten()
        
    #------------------------------ SIMULATED_ANNEALING ------------------------------
    #Método de início da otimização por simulated annealing
    def simulated_annealing(self, temperatura_inicial=100, taxa_resfriamento=0.99, limite_minimo=1):
        temperatura = temperatura_inicial
        
        while temperatura > limite_minimo:
            # 1. Atualizar fitness
            self.calculate_fitness()
            self.consistencia()
            fitness_antigo = np.sum(self.integral['fitness'])+np.sum(self.noturno['fitness'])
            if fitness_antigo < self.best_fitness:
                self.b_integral = np.copy(self.integral)
                self.b_noturno = np.copy(self.noturno)
                self.best_fitness = fitness_antigo;

            # 3. Selecionar célula via roleta (integral ou noturno)
            if np.max(self.integral['fitness']) and np.max(self.noturno['fitness']):
                # Escolha aleatória entre 'f_integral' e 'f_noturno'
                if random.random() > 0.5:
                    matrix, i, j = self.selecionar_matriz(self.integral)
                else:
                    matrix, i, j = self.selecionar_matriz(self.noturno)
            else:
                # Seleciona a matriz que tem o valor máximo válido
                if np.max(self.integral['fitness']):
                    matrix, i, j = self.selecionar_matriz(self.integral)
                elif np.max(self.noturno['fitness']):
                    matrix, i, j = self.selecionar_matriz(self.noturno)
                else:
                    break;
            
            # 4. Perturbação: escolha aleatória de uma segunda célula e troca
            k, l = self.selecionar_segunda_celula(matrix, i, j)
            self.trocar_elementos(matrix, i, j, k, l)
            
            # 5. Recalcular fitness após a troca
            self.calculate_fitness()
            fitness_novo = np.sum(self.integral['fitness'])+np.sum(self.noturno['fitness'])
            

            # 6. Aceitação com base na temperatura
            if fitness_novo >= fitness_antigo:
                # Manter a mudança
                pass
            else:
                # Aceitar a piora com uma probabilidade que depende da temperatura
                delta_fitness = fitness_novo - fitness_antigo
                if random.random() < np.exp(delta_fitness / temperatura):
                    pass  # Aceitar a mudança
                else:
                    # Reverter a troca
                    self.trocar_elementos(matrix, i, j, k, l)
            
            # 7. Resfriamento
            temperatura *= taxa_resfriamento
    #Método de cálculo dos pesos dos indvíduos
    def calcular_pesos(self, fitness_matrix):
        return (fitness_matrix) / np.sum(fitness_matrix)
    #Método de seleção de matriz por roleta pelos pesos
    def selecionar_matriz(self,matriz):
        pesos = self.calcular_pesos(matriz['fitness'])
        i, j = self.selecionar_celula_via_roleta(pesos)
        return matriz, i, j
    
    def selecionar_celula_via_roleta(self, pesos):
        # Transformar a matriz em uma lista de pesos e usar a roleta
        pesos_flat = pesos.flatten()
        idx = np.random.choice(range(len(pesos_flat)), p=pesos_flat)
        return np.unravel_index(idx, pesos.shape)
    
    def selecionar_segunda_celula(self, matrix, i, j):
        # Obter os índices da linha
        idxs = np.array(range(matrix.shape[1]))

        # Remover índices onde os valores são iguais ao da célula inicial
        idxs = idxs[matrix['id'][i, idxs] != matrix['id'][i, j]]
        
        # Remover índices de valor -1
        idxs = idxs[matrix['id'][i, idxs] != -1]

        # Escolher um índice aleatório diferente
        l = random.choice(idxs)
        return i, l
    
    def trocar_elementos(self, matrix, i, j, k, l):
        #Troca entre duas céllulas escolhidas aleatoriamnete
        matrix[i, j], matrix[i, l] = copy.deepcopy(matrix[i, l]), copy.deepcopy(matrix[i, j])
        #Definição do atributo alterado de cada uma com True
        matrix[i, j]["alterado"] = True
        matrix[i, l]["alterado"] = True
        print("trocado")
    
    #------------------------------ FITNESS ------------------------------
    
    def calculate_fitness(self):
        print(np.sum(self.integral['fitness']),np.sum(self.noturno['fitness']))
        self.verifica_professores()
        self.verifica_labs()
        self.verifica_quant_aulas_por_prof()
        #Redefine o atributo alterado para false
        self.integral['alterado'] = False
        self.noturno['alterado'] = False
        if not np.sum(self.integral['fitness'])+np.sum(self.noturno['fitness']):
            pass
    
    def consistencia(self):
        self.verifica_carga()
        #self.verifica_professores_por_carga()
        self.verifica_menosum()
        
    #Verifica se não há conflitos de um mesmo professor num mesmo horário em mais de uma sala
    def verifica_professores(self):
        for horario in [self.integral.T, self.noturno.T]:
            for aulas in horario:
                if not np.max(aulas["alterado"]):
                    continue
                aulas["fitness"] = 0
                #Confere a disposição dos professores
                mat,count = np.unique(np.concatenate(aulas['id_professores']), return_counts = True)                    
                for m in mat[count>=2]:
                    for aula in aulas:
                        if m in aula["id_professores"]:
                            aula["fitness"] += 1
                            
    #Os alunos devem ter aulas durante todos os periodos da manha
    #def verifica_aulas_manha(self):
        #if np.max(self.integral.T["alterado"][:36]):
     #   self.integral.T["fitness"][:36] += (self.integral.T["id"][:36] == -1)
     
    #Não pode ter o mesmo lab sendo usado por aulas diferentes
    def verifica_labs(self):
        for t in [self.noturno.T, self.integral.T]:
            for row in t:
                if not np.max(row["alterado"]):
                    continue
                row["fitness"] = 0
                mats = copy.deepcopy(row[row['id_labs'] != None])
                if not len(mats):
                    break
                unique_values, counts = np.unique(np.concatenate(mats["id_labs"]), return_counts=True)
                zeros_row = np.zeros(len(unique_values), dtype=int) - 1
                labs = np.array(list(zip(unique_values, counts,zeros_row)), dtype=self.verifica_labs_dtype)
                while True:
                    mats = mats[mats["quant_labs"] > 0]
                    labs = labs[labs["counts"] > 0]
                    if not len(mats) or min(labs["taken"]) != -1:
                        break
                    lab_index = np.where((labs["counts"] == min(labs[labs["taken"] == -1]["counts"])) & (labs["taken"] == -1))[0][0]
                    lab = labs[lab_index]
                    for mat in mats:
                        if (lab["id_labs"] in mat["id_labs"]):
                            mat["quant_labs"] -= 1
                            labs[lab_index]["taken"] = mat["id"]  # Modifica no array original usando o índice
                            if not mat["quant_labs"]:
                                for i in range(len(labs)):
                                    if labs[i]["id_labs"] in mat["id_labs"]:
                                        labs[i]["counts"] -= 1
                            break
                #detecta se sobrou turmas que faltam alocar
                if len(labs):
                    for lab in labs:
                        for r in row[row['id_labs'] != None]:
                            if lab["id_labs"] in r["id_labs"]:
                                r["fitness"] += 1      
                
    #O professor não pode dar 8 mais aulas por dia
    def verifica_quant_aulas_por_prof(self, max_aulas_por_dia=8):
        for function in (self.getSegunda, self.getTerca, self.getQuarta, self.getQuinta, self.getSexta):
            aulas = function()
            if not np.max(aulas["alterado"]):
                continue
            aulas["fitness"] = 0
            mat,count = np.unique(np.concatenate(aulas["id_professores"]), return_counts=True)
            for m in mat[count>8]:
                for r in aulas:
                    if m in r["id_professores"]:
                        r["fitness"] += 1;

    #Vedrifica a disponibilidade dos professores, não utilizado ainda
    def verifica_horario_pessoal_prof(ind, disp, result):
        pass
    
    #É ideal o professor vir a menor quantidade de dias possivel na escola, não utilizado
    def verifica_quant_de_dias_por_prof(ind, result = 0):
        dias = np.array([])
        for i in range(5):
            c = np.array(ind[:12]).T[i*6:6+i*6]
            m = np.array(ind[:12]).T[36+i*4:40+i*4]
            d = np.array(ind[-9:]).T[i*4:4+i*4]
            dias = np.append(dias, np.concatenate((c.flatten(),m.flatten(),d.flatten()))).tolist()
        dias = np.append(dias, np.concatenate((np.array(ind[:12]).T[30:36].flatten()))).tolist()
        for i in [int(x) for x in materias["id_professor"].split(",")]:
            professores = 0
            for d in dias:
                for f in d:
                    if i == f:
                        professores += 1
                        break
        result[1] += 6-professores
        return result
    
    #É ideal o professor ter os horarios dele proximos um do outro (diminuir a quantidade de espaço entre aulas), não utilizado
    def verifica_proximidade_de_aulas(ind, result = 0): 
        for turma in ind:  
            professores = np.array([])
    
            for aula in turma:  
                if aula != -1: 
                    professores = np.concatenate((professores, [materias.at[aula, "id_professor"]]), axis=None)
    
            uniques, counts = np.unique(professores, return_counts=True)
            
            for count in counts:
                if count > 1:  
                    result[0] -= (count - 1)
                    
        return result
    #Confere se nenhuma turma está com a quantidade de matérias errada
    def verifica_carga(self):
        for periodo, horario in [[self.integral,"integral"], [self.noturno, "noturno"]]:
            for j,p in enumerate(periodo):
                t = np.unique(turmas.loc[turmas["horario"]==horario]["carga"].reset_index(drop="true")[j])
                i = np.unique(p["id"][p["id"] != -1])
                if not np.array_equal(i,t):
                    print("erro! Carga errada!!!")
                    return
    #Confere se os professores estão em suas respectivas maatérias
    def verifica_professores_por_carga(self):
        for periodo, horario in [[self.integral, "integral"], [self.noturno, "noturno"]]:
            for j,p in enumerate(periodo):
                profs2 = np.array([])
                profs1 = np.array([])
                profs = p["id_professores"][p["id"] != -1]
                for g in profs:
                    f = str(g).replace('[','')
                    profs1 = np.concatenate((profs1,f.replace(']','')), axis=None)
                profs1.sort()
                profs1,count1 = np.unique(profs1, return_counts=True)
                c = np.unique(p['id'][p['id'] != -1])
                for a in c:
                    profs2 = np.concatenate((profs2,materias.at[a,"id_professor"]), axis=None)
                profs2.sort()
                profs2,count2  = np.unique(profs2, return_counts=True)
                if not np.array_equal(profs1.sort(),profs2.sort()) or not np.array_equal(count1, count2):
                    print("erro! Professores errados!!!")
                    return
    #Verfica se células populadas com -1 possuem fitness maior q 0
    def verifica_menosum(self):
        for periodo in [self.integral, self.noturno]:
            for p in periodo:
                ids = np.where(p['id'] == -1)[0]
                for i in ids:
                    if p['fitness'][i] > 0:    
                        print('Erro! -1 com fitness maior que 0')

#Criação da variável turmas
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
turmas.loc[len(turmas.index)] = ['ELI3', [], [], 'integral'] #12
turmas.loc[len(turmas.index)] = ['INF1', [], [], 'noturno'] 
turmas.loc[len(turmas.index)] = ['INF2', [], [], 'noturno'] 
turmas.loc[len(turmas.index)] = ['INF3', [], [], 'noturno'] 
turmas.loc[len(turmas.index)] = ['MEC1', [], [], 'noturno'] 
turmas.loc[len(turmas.index)] = ['MEC2', [], [], 'noturno'] 
turmas.loc[len(turmas.index)] = ['MEC3', [], [], 'noturno'] 
turmas.loc[len(turmas.index)] = ['ELE1', [], [], 'noturno'] 
turmas.loc[len(turmas.index)] = ['ELE2', [], [], 'noturno'] 
turmas.loc[len(turmas.index)] = ['ELE3', [], [], 'noturno'] #9
#Preenchimento de matérias com as informações do csv
materias = pd.read_csv("disciplinas_arrumadas.csv", on_bad_lines='skip', sep = ',')

"""for num,nome in enumerate(turmas['nome']):
    query = f"SELECT atr.qntd_aulas, d.id FROM atribuicao_turma as att INNER JOIN turma as tu ON att.id_turma = tu.id INNER JOIN atribuicao as atr on att.id_atribuicao = atr.id INNER JOIN disciplina as d ON atr.id_disciplina = d.id WHERE tu.nome = '{nome}' and atr.sd_descricao = 'Turma Única'"
    cursor.execute(query)
    record = cursor.fetchall()
    query = f"SELECT DISTINCT atc.* FROM atribuicaocasada as atc INNER JOIN atribuicao_atribuicaocasada as attc ON attc.id_atribuicaocasada = atc.id INNER JOIN atribuicao_turma as attr ON attr.id_atribuicao = attc.id_atribuicao INNER JOIN turma on turma.id = attr.id_turma WHERE turma.nome='{nome}'"
    cursor.execute(query)
    r = cursor.fetchall()
    for c in record:
        turmas['materias'][num] = np.append(turmas['materias'][num],c[1])
        turmas['carga'][num] = np.append(turmas['carga'][num], c[0])
    for c in r:
        turmas['materias'][num] = np.append(turmas['materias'][num],c[0])
        turmas['carga'][num] = np.append(turmas['carga'][num], c[1])"""
#def alg_gen(turma"s,mater"ias):
#Preenchimento dos campos carga e materias em turmas
materias.fillna('', inplace=True)
for i,row in turmas.iterrows():
     turmas.at[i,"materias"] = materias.loc[(materias["turma_com_ind"] == row["nome"])].index.values#.to_numpy()
     carga = np.array([])
     for z in turmas.at[i,"materias"]:
         carga = np.concatenate((carga,np.zeros(materias.at[z,"aulas_semana"])+z), axis=None)
     turmas.at[i,"carga"] = carga
#Criação do indivíduo
ind = Individual().individualGenBlocks(turmas)
count = 0;
#Execuçao do algoritmo até ele alcançar o melhor resultado ou o número máximo de execuções.
while ind.best_fitness != 0 and count < 100:
    ind.simulated_annealing()
    count+=1;
    print(str(count)+"º iteração, best fitness: "+ str(ind.best_fitness))


"""
del materias['aluno_inicial']
del materias['aluno_final']
del materias['t_identificador']
del materias['turma']
del materias['quinzenal']
materias = materias.astype(str)
materias["turma_com_ind"] = materias["turma"] + materias["t_identificador"]
turmas_divididas = materias.loc[materias["sd_descricao"] != "Turma Única"]
materias = materias.drop(turmas_divididas.index)
#Arrumando mecanica pratica (problema de 3 turmas no mesmo horario no mesmo lab)
mec = turmas_divididas.loc[turmas_divididas["d_descricao"] == "Mecânica Prática"]
turmas_divididas = turmas_divididas.drop(mec.index)
mec= mec.groupby(['turma_com_ind']).agg({','.join})
mec.columns = mec.columns.droplevel(1)
mec['turma_com_ind'] = mec.index
materias = pd.concat([materias, mec])
#Arrumando fisica e quimica
fis_qui = turmas_divididas.loc[turmas_divididas["sd_descricao"].str.contains("Laboratório - Turma")]
turmas_divididas = turmas_divididas.drop(fis_qui.index)
fis_qui = fis_qui.drop_duplicates(subset=['turma_com_ind', 'nome_professor'])
fis_qui = fis_qui.groupby(['turma_com_ind']).agg({','.join})
fis_qui.columns = fis_qui.columns.droplevel(1)
fis_qui['turma_com_ind'] = fis_qui.index
materias = pd.concat([materias, fis_qui])
#Arrumando laboratiorios de inf/ele/mac

#Resetando os indexes
materias.reset_index(drop=True, inplace=True)
"""