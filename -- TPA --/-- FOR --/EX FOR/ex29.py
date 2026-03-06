pss_eng = 0
idd_eng = 0
eng2025 = 0

pss_com = 0
idd_com = 0
com2025 = 0

pss_adm = 0
idd_adm = 0
adm2025 = 0

for cont in range (1, 501):
    curso = int(input('Digite o código do seu curso: \n     1- ENGENHARIA\n     2- COMPUTAÇÂO\n     3- ADMINISTRAÇÂO\n--> '))
    idade = int(input('Digite sua idade:\n--> '))
    print('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-')

    if curso == 1:
        pss_eng = pss_eng + 1
        idd_eng = idd_eng + idade
        if idade >= 20 and idade <= 25:
            eng2025 = eng2025 + 1
        else:
            eng2025 = eng2025

    elif curso == 2:
        pss_com = pss_com + 1
        idd_com = idd_com + idade
        if idade >= 20 and idade <= 25:
            com2025 = com2025 + 1
        else:
            com2025 = com2025

    elif curso == 3:
        pss_adm = pss_adm + 1
        idd_adm = idd_adm + idade
        if idade >= 20 and idade <= 25:
            adm2025 = adm2025 + 1
        else:
            adm2025 = adm2025

    else:
        print(' \033[31mOpção inválida!\033[0m\n')

if pss_eng > 0:
    med_eng = idd_eng / pss_eng
else:
    med_eng = 0

if pss_com > 0:
    med_com = idd_com / pss_com
else:
    med_com = 0

if pss_adm > 0:
    med_adm = idd_adm / pss_adm
else:
    med_adm = 0

print(f'\n--> Número de pessoas por curso: \n    ENGENHARIA: {pss_eng}\n    COMPUTAÇÃO: {pss_com}\n    ADMINISTRAÇÃO: {pss_adm}\n')
print(f'--> Número de pessoas entre 20 e 25 anos em cada curso:\n    ENGENHARIA: {eng2025}\n    COMPUTAÇÃO: {com2025}\n    ADMINISTRAÇÃO: {adm2025}\n')

if med_com > med_eng < med_adm:
    print(f'--> Curso com menor média de idade: Engenharia({med_eng})')
elif med_eng > med_com < med_adm:
    print(f'--> Curso com menor média de idade: Computação({med_com})')
else:
    print(f'--> Curso com menor média de idade: Administração({med_adm})')