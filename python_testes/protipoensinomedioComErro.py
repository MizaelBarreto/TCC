import random

# Definindo parâmetros do problema
NUM_SALAS = 2
NUM_MATERIAS = 15
NUM_PROFESSORES = 15
NUM_HORARIOS = 6
DIAS_SEMANA = 5
TOTAL_AULAS = NUM_HORARIOS * DIAS_SEMANA * NUM_SALAS

# Lista de matérias e professores
materias = [f"Materia{i+1}" for i in range(NUM_MATERIAS)]
professores = [f"Prof{i+1}" for i in range(NUM_PROFESSORES)]

# Cria uma lista de aulas, onde cada aula é um par de matéria e professor
aulas = list(zip(materias, professores)) * 4  # Cada matéria aparece quatro vezes

# Gerar uma população inicial de horários
def gerar_populacao_inicial(tamanho_populacao):
    populacao = []
    for _ in range(tamanho_populacao):
        horario = [None] * TOTAL_AULAS
        aulas_restantes = aulas.copy()
        random.shuffle(aulas_restantes)
        
        for dia in range(DIAS_SEMANA):
            for horario_idx in range(NUM_HORARIOS):
                for sala in range(NUM_SALAS):
                    if aulas_restantes:
                        aula = aulas_restantes.pop()
                        horario[dia * NUM_HORARIOS * NUM_SALAS + horario_idx * NUM_SALAS + sala] = aula
        populacao.append(horario)
    return populacao

# Verifica se o horário é válido
def horario_valido(horario):
    # Verifica se um professor está dando aula em duas salas ao mesmo tempo
    for dia in range(DIAS_SEMANA):
        for horario_idx in range(NUM_HORARIOS):
            professores_horario = [
                horario[dia * NUM_HORARIOS * NUM_SALAS + horario_idx * NUM_SALAS + sala][1]
                for sala in range(NUM_SALAS)
                if horario[dia * NUM_HORARIOS * NUM_SALAS + horario_idx * NUM_SALAS + sala] is not None
            ]
            if len(professores_horario) != len(set(professores_horario)):
                return False
    
    # Verifica se cada matéria é ministrada exatamente duas vezes por sala por semana
    for sala in range(NUM_SALAS):
        materias_horario = [
            horario[dia * NUM_HORARIOS * NUM_SALAS + horario_idx * NUM_SALAS + sala][0]
            for dia in range(DIAS_SEMANA)
            for horario_idx in range(NUM_HORARIOS)
            if horario[dia * NUM_HORARIOS * NUM_SALAS + horario_idx * NUM_SALAS + sala] is not None
        ]
        for materia in materias:
            if materias_horario.count(materia) != 2:
                return False
    
    return True

# Função de mutação para alterar aleatoriamente um horário
def mutacao(horario):
    indice = random.randint(0, TOTAL_AULAS - 1)
    while horario[indice] is None:
        indice = random.randint(0, TOTAL_AULAS - 1)
    aula_atual = horario[indice]
    aulas_disponiveis = [a for a in aulas if a != aula_atual and a[1] != aula_atual[1]]
    if aulas_disponiveis:
        horario[indice] = random.choice(aulas_disponiveis)
    return horario

# Algoritmo genético principal
def algoritmo_genetico(tamanho_populacao, geracoes):
    populacao = gerar_populacao_inicial(tamanho_populacao)
    for _ in range(geracoes):
        for i, horario in enumerate(populacao):
            if not horario_valido(horario):
                populacao[i] = mutacao(horario)
    # Verifica se existe pelo menos um horário válido na população final
    for horario in populacao:
        if horario_valido(horario):
            return horario
    return None

# Execução do algoritmo genético
melhor_horario = algoritmo_genetico(tamanho_populacao=10, geracoes=100)

# Imprimir os horários de forma mais clara
if melhor_horario is not None:
    dias_semana = ['Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta']
    for j in range(DIAS_SEMANA):
        print(f"{dias_semana[j]}:")
        for k in range(NUM_HORARIOS):
            print(f"  Horário {k+1}:")
            for i in range(NUM_SALAS):
                aula = melhor_horario[(j * NUM_HORARIOS * NUM_SALAS) + (k * NUM_SALAS) + i]
                if aula is None:
                    print(f"    Sala {i+1}: None")
                else:
                    print(f"    Sala {i+1}: {aula}")
else:
    print("Impossível resolver o problema com os parâmetros fornecidos.")
