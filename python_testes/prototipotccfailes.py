import random

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

# Função para gerar um cronograma aleatório
def gerar_cronograma_aleatorio():
    cronograma = {dia: {horario: None for horario in horarios} for dia in dias_semana}
    # Distribuir aulas de Geografia, História, Artes, Ciências e Educação Física
    disciplinas_2_horarios = ["Geografia", "História", "Artes", "Ciências", "Educação Física"]
    for disciplina in disciplinas_2_horarios:
        for _ in range(num_aulas[disciplina]):
            while True:
                dia = random.choice(dias_semana)
                horario_index = random.randint(0, len(horarios) - 2)  # Seleciona um horário e o próximo
                if None in cronograma[dia].values():
                    horario = horarios[horario_index]
                    if cronograma[dia][horario] is None and cronograma[dia][horarios[horario_index + 1]] is None:
                        cronograma[dia][horario] = disciplina
                        cronograma[dia][horarios[horario_index + 1]] = disciplina
                        break
    # Distribuir aulas de Matemática e Português nos horários restantes
    disciplinas_1_horario = ["Matemática", "Português"]
    for disciplina in disciplinas_1_horario:
        for _ in range(num_aulas[disciplina]):
            while True:
                dia = random.choice(dias_semana)
                horario = random.choice(horarios)
                if cronograma[dia][horario] is None:
                    cronograma[dia][horario] = disciplina
                    break
    return cronograma

# Exibir o cronograma gerado
def exibir_cronograma(cronograma):
    for dia in dias_semana:
        print(dia)
        for horario in horarios:
            print(f"{horario}: {cronograma[dia][horario]}")
        print()

# Gerar e exibir o cronograma aleatório
cronograma = gerar_cronograma_aleatorio()
exibir_cronograma(cronograma)
