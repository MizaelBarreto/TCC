import random

#API 

from fastapi import FastAPI

# Definindo os horários disponíveis
horarios = [
    "7:15-8:00",
    "8:00-8:45",
    "8:45-9:30",
    "10:00-10:45",
    "10:45-11:30",
    "11:30-12:15"
]

# Definindo os dias da semana
dias_semana = [
    "Segunda-feira",
    "Terça-feira",
    "Quarta-feira",
    "Quinta-feira",
    "Sexta-feira"
]

# Definindo os professores e suas disciplinas
professores = {
    "Mauro": ["Matemática"],
    "Rogerio": ["Ciências"],
    "João": ["Português"],
    "Luciana": ["História"],
    "Maria": ["Geografia"],
    "Julio": ["Artes"],
    "Vitor": ["Educação Física"]
}

# Definindo o número de aulas por disciplina por semana
num_aulas = {
    "Matemática": 10,
    "Ciências": 2,
    "Português": 10,
    "História": 2,
    "Geografia": 2,
    "Artes": 2,
    "Educação Física": 2
}

app = FastAPI()
@app.get("/")
def home():
    # Gerando a população inicial
    populacao_inicial = [gerar_cronograma_aleatorio() for _ in range(10)]
    
    # Rodando o algoritmo genético
    melhor_cronograma = algoritmo_genetico(populacao_inicial, 100)
    # Exibindo o melhor cronograma encontrado
    
    return melhor_cronograma
  
# Função para gerar um cronograma aleatório
def gerar_cronograma_aleatorio():
    while True:
        cronograma = {}
        # Escolhe um dia aleatório para a aula de Educação Física
        dia_ed_fisica = random.choice(dias_semana)
        # Escolhe um índice aleatório para começar as duas aulas consecutivas (um dos três primeiros horários)
        indice_horario = random.randint(0, 2)
        for dia in dias_semana:
            cronograma[dia] = {}
            for i, horario in enumerate(horarios):
                if dia == dia_ed_fisica and indice_horario <= i < indice_horario + 2:
                    cronograma[dia][horario] = "Vitor"
                else:
                    cronograma[dia][horario] = random.choice(list(professores.keys()))
        # Verifica se as aulas do professor Vitor estão em horários consecutivos no mesmo dia
        ed_fisica_horarios = [horario for horario in horarios if cronograma[dia_ed_fisica][horario] == "Vitor"]
        if len(ed_fisica_horarios) == 2 and horarios.index(ed_fisica_horarios[1]) - horarios.index(ed_fisica_horarios[0]) == 1:
            return cronograma

# Função de fitness para avaliar a qualidade de um cronograma
def calcular_fitness(cronograma):
    fitness = 0
    for professor, disciplinas_professor in professores.items():
        for disciplina in disciplinas_professor:
            num_aulas_disciplina = num_aulas[disciplina]
            aulas_professor = sum(1 for dia in cronograma.values() for aula in dia.values() if aula == professor and disciplina in professores[aula])
            fitness += abs(num_aulas_disciplina - aulas_professor)
    return fitness

# Algoritmo genético para otimizar o cronograma
def algoritmo_genetico(populacao_inicial, geracoes):
    populacao = populacao_inicial
    for geracao in range(geracoes):
        populacao = sorted(populacao, key=lambda x: calcular_fitness(x))
        melhor_cronograma = populacao[0]
        nova_populacao = [melhor_cronograma]
        for _ in range(len(populacao) - 1):
            pai1 = random.choice(populacao[:len(populacao) // 2])
            pai2 = random.choice(populacao[:len(populacao) // 2])
            filho = {}
            for dia in dias_semana:
                filho[dia] = {}
                for i, horario in enumerate(horarios):
                    try:
                        if random.random() < 0.5:
                            filho[dia][horario] = pai1[dia][horario]
                        else:
                            filho[dia][horario] = pai2[dia][horario]
                    except KeyError:
                        print("Erro ao acessar chave. Usando aleatório.")
                        filho[dia][horario] = random.choice(list(professores.keys()))
            # Ajuste para garantir limite de aulas por disciplina para cada professor
            for professor, disciplinas_professor in professores.items():
                for disciplina in disciplinas_professor:
                    num_aulas_disciplina = num_aulas[disciplina]
                    aulas_professor = sum(1 for dia in filho.values() for aula in dia.values() if
                                          aula == professor and disciplina in professores[aula])
                    while aulas_professor > num_aulas_disciplina:
                        dia = random.choice(dias_semana)
                        horario = random.choice(horarios)
                        if filho[dia][horario] == professor and disciplina in professores[professor]:
                            filho[dia][horario] = random.choice(list(professores.keys()))
                            aulas_professor -= 1
            nova_populacao.append(filho)
        populacao = nova_populacao
    return melhor_cronograma
