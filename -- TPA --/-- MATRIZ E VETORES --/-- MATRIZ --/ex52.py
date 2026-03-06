matriz = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
imp = somacol = s = 0

for linha in range(4):
    for coluna in range(4):
        matriz[linha][coluna] = int(input(f'Digite um valor para [{linha}, {coluna}]: '))

print('-='*15)
print(' A. ')
for linha in range(4):
    for coluna in range(4):
        print(f'[{matriz[linha][coluna] :^5}]', end='')
        if matriz[linha][coluna] % 2 == 1:
            imp += matriz[linha][coluna]
    print()

print('-='*15)

print(f' B. Soma dos impares = {imp}')

print('-='*15)

for linha in range(4):
            somacol += matriz[linha][2]
print(F' C. Soma da terceira coluna = {somacol}')

print('-='*15)

for linha in range(4):
    for coluna in range(4):
        s+= matriz[linha][coluna]
print(F' D. Soma da matriz = {s}')

print('-='*15)

for linha in range(4):
    if linha == 0:
     M=matriz[linha][3]
    elif matriz[linha][3] > M:
        M = matriz[linha][3]

print(f' E. Maior da quata coluna = {M}')