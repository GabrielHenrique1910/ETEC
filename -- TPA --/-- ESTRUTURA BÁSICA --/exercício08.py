# Faça um programa que leia dois números e imprima o maior número (suponha números diferentes).

n1 = float(input('Digite um número: '))
n2 = float(input('Digite mais um número (diferente do primeiro): '))

if n1 > n2:
    print('Maior número: {}'.format(n1))
else:
    print('Maior número: {}'.format(n2))