#Faça um programa que leia dois valores numéricos e efetue a adição dos dois números, se o segundo o segundo for maior que 15, efetue a subtração dos dois números caso o segundo número seja menor que 115 e apresentar o resultado.

n1 = float(input('Digite um número aleatório: '))
n2 = float(input('Digite mais um número: '))

So = n1 + n2

if n2 > 15 and n2 < 115:
   su = n1 - n2
   print('A subtração dos dois resulta em {}'.format(su))

