matriz = [[0, 0], [0, 0], [0, 0]]
pares = somalinha = somacoluna = 0

for linha in range(2):
    for coluna in range(2):
        matriz[linha][coluna] = int(input(f'Digite um valor para [{linha}, {coluna}]:\n --> '))

print('-='*20)

for linha in range(2):
    for coluna in range(2):
        print(f'[{matriz[linha][coluna] :^5}]', end='')
        if matriz[linha][coluna] % 2 == 0:
            pares += matriz[linha][coluna]
    print()

print('-='*20)
print(f'A soma dos números pares é: {pares}')

for linha in range(0, 2):
    somacoluna += matriz[linha][1]
print(f'A soma dos números da segunda coluna é {somacoluna}')

for coluna in range(0, 2):
    somalinha += matriz[0][coluna]
print(f'A soma dos números da primeira linha é {somalinha}')

for coluna in range(2):
    if coluna == 0:
        maior = matriz[1][coluna]
    elif matriz[1][coluna] > maior:
        maior = matriz[1][coluna]
print(f'O maior valor da segunda linha é: {maior}')

print('-='*20)