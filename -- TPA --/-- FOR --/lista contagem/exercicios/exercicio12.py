#Faça um programa que leia um ano qualquer e mostre se ele é Bissexto.

ano = int(input('Digite um ano: '))

if ano % 4 == 0:
    print('O ano é bissexto!')
else:
    print('O ano não é bissexto!')