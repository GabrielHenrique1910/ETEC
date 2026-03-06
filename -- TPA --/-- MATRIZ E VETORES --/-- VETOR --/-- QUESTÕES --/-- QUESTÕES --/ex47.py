tupla = []
pares = []
n3 = []

for i in range (4):
    n = float(input(f'Digite o {i + 1}º número:\n --> '))
    tupla.append(n)

    if n % 2 == 0:
        pares.append(n)
    if n == 3:
        n3.append(i+1)


if 9 in tupla:
    print(f'\nQUANTIDADE DE NÚMEROS 9:\n-> Aparecem {tupla.count(9)} números 9 ')

if 3 in tupla:
    print(f'\nPOSIÇÃO DO(S) NÚMERO(S) 3:\n->A posição do número 3 é: {n3}')

print(f'\nOs números pares são: -> {pares}')

