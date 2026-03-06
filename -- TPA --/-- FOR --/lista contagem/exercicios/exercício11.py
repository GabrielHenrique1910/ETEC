#Desenvolva um programa que pergunte a distância de uma viagem em Km. Calcule o preço da passagem, cobrando R$0,50 por Km para viagens de até 200Km e R$0,45 para viagens mais longas.

dis = float(input('Qual é a distância que será percorrida na viagem?'))

if dis > 200:
    val = dis * 0.45
    print('O valor da viagem será de {}'.format(val))
else:
    val2 = dis * 0.5
    print('O valor da viagem será de {}'.format(val2))
