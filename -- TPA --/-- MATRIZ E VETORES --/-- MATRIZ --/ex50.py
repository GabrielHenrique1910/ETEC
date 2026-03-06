matriz = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
somacoluna2 = somacoluna3 = pares = 0

for linha in range(3):
    for coluna in range(3):
        matriz[linha][coluna] = int(input(f'Digite um valor para [{linha}, {coluna}]:\n --> '))
        if matriz[linha][coluna] % 2 == 0:
            pares += matriz[linha][coluna]

print('-='*23)

print(' A. ')
for linha in range(3):
    for coluna in range(3):
        print(f'[{matriz[linha][coluna] :^5}]', end='')
    print()

print('-='*23)

print(f' B. Soma de números pares = {pares}')

print('-='*23)

for linha in range(0, 3):
    somacoluna2 += matriz[linha][1]
print(f' C. A soma dos números da segunda coluna = {somacoluna2}')

print('-='*23)

for linha in range(0, 3):
    somacoluna3 += matriz[linha][2]
print(f' D. A soma dos números da terceira coluna = {somacoluna3}')

print('-='*23)

for coluna in range(3):
    if coluna == 0:
        maior = matriz[1][coluna]
    elif matriz[1][coluna] > maior:
        maior = matriz[1][coluna]
    elif matriz[2][coluna] > maior:
        maior = matriz[2][coluna]
print(f' E. O maior valor da segunda linha = {maior}')  

