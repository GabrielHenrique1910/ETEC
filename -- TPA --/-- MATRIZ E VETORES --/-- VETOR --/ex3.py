tupla = []

for i in range (4):
    n = int(input(f'Digite o {i + 1}º número:\n --> '))
    tupla.append(n)


if 9 in tupla:
    qt_9 = tupla.count(9)
    print(qt_9)


if 3 in tupla:
    pos_3 = tupla.index(3) + 1
    print(f'\nO 3 esta na posicao {pos_3}\n')


