import random
import datetime
import schedule
import time

# Definindo os professores e suas disciplinas
professores = ['Claudio', 'Mauro', 'Lucia', 'Vitor']
disciplinas = ['Matematica', 'Portugues', 'Artes', 'Ciencias', 'Geografia', 'Historia', 'Educação Física']
prof_disciplinas = {
    'Claudio': ['Matematica', 'Portugues'],
    'Mauro': ['Artes', 'Ciencias'],
    'Lucia': ['Geografia', 'Historia'],
    'Vitor': ['Educação Física']
}

# Definindo os horários das aulas
horarios = ['7:15-8:00', '8:00-8:45', '8:45-9:30', '10:00-10:45', '10:45-11:30', '11:30-12:15']

# Inicializando a tabela de horários
tabela_horarios = {horario: {dia: '' for dia in range(5)} for horario in horarios}

# Atribuindo disciplinas aos horários
for dia in range(5):
    professores_dia = random.sample(professores, 3)
    for horario in horarios:
        for prof in professores_dia:
            disciplina = random.choice(prof_disciplinas[prof])
            if tabela_horarios[horario][dia] == '':
                tabela_horarios[horario][dia] = f'{disciplina} ({prof})'
                if disciplina == 'Educação Física':
                    break

# Garantindo que haja duas aulas de Educação Física em um dia da semana
dia_ed_fisica = random.choice(range(5))
horario_ed_fisica = random.choice(horarios[:-1])  # Escolhendo um horário que permita duas aulas seguidas
indice_horario = horarios.index(horario_ed_fisica)
tabela_horarios[horario_ed_fisica][dia_ed_fisica] = 'Educação Física (Vitor)'
tabela_horarios[horarios[indice_horario + 1]][dia_ed_fisica] = 'Educação Física (Vitor)'

# Imprimindo a tabela de horários
dias_semana = ['Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira']

def imprimir_tabela():
    for dia in range(5):
        print(f'\n{dias_semana[dia]}:')
        for horario, aulas in tabela_horarios.items():
            print(f'{horario}: {aulas[dia]}')

imprimir_tabela()
