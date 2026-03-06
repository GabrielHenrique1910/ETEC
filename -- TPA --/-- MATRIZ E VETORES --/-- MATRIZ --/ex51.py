matriz = [[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0]]
impares = somacoluna1 = somalinha = 0

for linha in range(5):
    for coluna in range(5):
        matriz[linha][coluna] = int(input(f'Digite um valor para [{linha}, {coluna}]:\n --> '))
        if matriz[linha][coluna] % 2 == 1:
            impares += matriz[linha][coluna]

print('-=' * 23)

print(' A. ')
for linha in range(5):
    for coluna in range(5):
        print(f'[{matriz[linha][coluna] :^5}]', end='')
    print()

print('-=' * 23)

print(f' B. Soma de números ímpares = {impares}')

print('-=' * 23)

for linha in range(0, 5):
    somacoluna1 += matriz[linha][0]
print(f' C. A soma dos números da primeira coluna = {somacoluna1}')

print('-=' * 23)

for coluna in range(0, 5):
    somalinha -= matriz[4][coluna]
print(f' D. A soma dos números da quinta linha = {somalinha}')

print('-=' * 23)

for linha in range(5):
    if linha == 0:
        menor = matriz[linha][1]
    elif matriz[linha][1] < menor:
        menor = matriz[linha][1]
print(f' E. O menor valor da segunda coluna = {menor}')

print('-='*23)