#Faça um programa que leia dois números e imprima-os em ordem crescente (suponha números diferentes)

n1 = float(input('Digite um número: '))
n2 = float(input('Digite mais um número (diferente do primeiro): '))

if n1 > n2:
    print('{}, {}'.format(n1, n2))
else:
    print('{}, {}'.format(n2, n1))