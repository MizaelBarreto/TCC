import random

# Definindo parâmetros do problema
NUM_SALAS = 6
NUM_MATERIAS = 10
NUM_HORARIOS = 6
DIAS_SEMANA = 5
TOTAL_AULAS = NUM_HORARIOS * DIAS_SEMANA

# Lista de matérias e professores
materias = ["Matemática", "Português", "História", "Geografia", "Física", "Química", "Biologia", "Inglês", "Artes", "Educação Física"]
professores = ["Prof1", "Prof2", "Prof3", "Prof4", "Prof5", "Prof6", "Prof7", "Prof8", "Prof9", "Prof10"]

# Cria uma lista de aulas, onde cada aula é um par de matéria e professor
aulas = list(zip(materias, professores))

# Gerar uma população inicial de horários
def gerar_populacao_inicial(tamanho_populacao):
    populacao = []
    for _ in range(tamanho_populacao):
        horario = []
        for _ in range(DIAS_SEMANA):
            dia = []
            for _ in range(NUM_HORARIOS):
                aulas_disponiveis = aulas.copy()
                sala = []
                for _ in range(NUM_SALAS):
                    if len(aulas_disponiveis) == 0:
                        sala.append(None)
                    else:
                        aula = random.choice(aulas_disponiveis)
                        sala.append(aula)
                        aulas_disponiveis = [a for a in aulas_disponiveis if a[1] != aula[1]]
                dia.extend(sala)
            horario.extend(dia)
        populacao.append(horario)
    return populacao
def horario_valido(horario):
    for i in range(NUM_HORARIOS):
        for j in range(DIAS_SEMANA):
            professores_horario = [horario[k][1] for k in range(j*NUM_HORARIOS*NUM_SALAS + i, (j+1)*NUM_HORARIOS*NUM_SALAS, NUM_HORARIOS) if horario[k] is not None]
            if len(professores_horario) != len(set(professores_horario)):
                return False
    return True
# Função de mutação para alterar aleatoriamente um horário
def mutacao(horario):
    indice = random.randint(0, TOTAL_AULAS - 1)
    aulas_disponiveis = [a for a in aulas if a[1] != horario[indice][1]]
    if len(aulas_disponiveis) > 0:
        horario[indice] = random.choice(aulas_disponiveis)
    return horario

# Algoritmo genético principal
def algoritmo_genetico(tamanho_populacao, geracoes):
    populacao = gerar_populacao_inicial(tamanho_populacao)
    if populacao is None:
        return None
    for _ in range(geracoes):
        for i, horario in enumerate(populacao):
            if not horario_valido(horario):
                populacao[i] = mutacao(horario)
    return populacao

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
                aula = melhor_horario[0][(j*NUM_SALAS*NUM_HORARIOS) + (i*NUM_HORARIOS) + k]
                if aula is None:
                    print(f"    Sala {i+1}: None")
                else:
                    print(f"    Sala {i+1}: {aula}")
