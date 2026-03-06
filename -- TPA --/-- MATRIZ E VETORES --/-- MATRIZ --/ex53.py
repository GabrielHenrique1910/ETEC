matriz = [[0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]

par = somacol = s = 0

for linha in range(6):
    for coluna in range(6):
        matriz[linha][coluna] = int(input(f'Digite um valor para [{linha}, {coluna}]: '))

print('-=' * 15)
print(' A. ')
for linha in range(6):
    for coluna in range(6):
        print(f'[{matriz[linha][coluna]:^5}]', end='')
        if matriz[linha][coluna] % 2 == 0:
            par += matriz[linha][coluna]
    print()

print('-=' * 15)
print(f' B. Soma de números pares = {par}')
print('-=' * 15)

for linha in range(6):
    somacol += matriz[linha][4]
print(f' C. Soma da quinta coluna = {somacol}')

print('-=' * 15)

for coluna in range(6):
    s += matriz[5][coluna]
print(f' D. Soma da sexta linha = {s}')

print('-=' * 15)

m = matriz[0][0]
for linha in range(6):
    if matriz[linha][0] > m:
        m = matriz[linha][0]
print(f' E. Maior da primeira coluna = {m}')
