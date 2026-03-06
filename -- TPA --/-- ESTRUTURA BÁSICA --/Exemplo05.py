#Elabore um programa que dada a idade de um nadador classifique-o em uma das
#Seguintes categorias
#Infantil A = 5 a 7 anos
#Infaltil B = 8 a 11 anos
#Juvenil A = 12 a 13 anos
#Juvenil B = 14 a 17 anos
#Adultos = 18 a 39 anos
#Sênior = Aci8ma de 40 anos

idade = int(input('Digite a idade do nadador: '))

if idade >= 1 and idade <= 4:
    print('A idade {} anos se encaixa na categoria BEBÊ!'.format(idade))

elif idade >= 5 and idade <= 7:
    print('A idade {} anos se encaixa na categoria INFANTIL A!'.format(idade))
elif idade >= 8 and idade <= 11:
    print('A idade {} anos se encaixa na categoria INFANTIL B!'.format(idade))
elif idade >= 12 and idade <= 13:
    print('A idade {} anos se encaixa na categoria JUVENIL A!'.format(idade))
elif idade >= 14 and idade <= 17:
    print('A idade {} anos se encaixa na categoria JUVENIL B!'.format(idade))
elif idade >=18 and idade <= 39:
    print('A idade {} anos se encaixa na categoria ADULTO!'.format(idade))

else:
    print('A idade {} anos se encaixa na categoria SÊNIOR!'.format(idade))