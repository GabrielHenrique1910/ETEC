#Exercício 02 - Dobro, Triplo e Raiz quadrada

import math

n = float(input('Digite um número:\n--> '))
d = n * 2
t = n * 3
r = math.sqrt(n)

print('O dobro do número é {}\nO triplo é {}\nSua raiz quadrada é {}'.format(d, t, r))