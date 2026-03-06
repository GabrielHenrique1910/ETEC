#Faça um programa que leia um número e imprimir uma das mensagens: maior do que 20, é igual a 20 ou é menor do que 20.

n = float(input('Digite um número: '))

if n == 20:
    print('O número digitado é exatamente 20!')
elif n > 20:
    print('O número digitado é maior que 20!')
else:
    print('O número digitado é menor que 20!')