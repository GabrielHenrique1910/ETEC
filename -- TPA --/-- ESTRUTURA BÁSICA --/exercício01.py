#Faça um programa que leia um número inteiro e mostre uma mensagem indicando se este número é par ou ímpar, e se é positivo ou negativo.

n = int(input('Digite um número aleatório: '))

if n >= 0 and n % 2 == 0:
    input('O número é par e positivo!')
elif n > 0 and n % 2 == 1:
    input('O número é ímpar e positivo!')

elif n < 0 and n % 2 == 0:
    print('O número é negativo e par!')
else:
    print('O número é negativo e impar!')