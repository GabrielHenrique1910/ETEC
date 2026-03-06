#Escreva um programa que leia a velocidade de um carro. Se ele ultrapassar 80km/h, mostre uma mensagem dizendo que ele foi multado. A multa vai custar R$7,00 por cada Km acima do limite.

vel = float(input('Digite a velocidade a velociade do carro na via (em km/h): '))

if vel > 80:
    mul = (vel - 80) * 7
    print('O carro ultrapassou a velocidade limite da via, a multa a ser paga é de R${}.'.format(mul))
else:
    print('O carro não ultrapassou a velocidade limite.')
