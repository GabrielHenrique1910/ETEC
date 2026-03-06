matriz=[[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
imp=0
somacol=0
s=0
for linha in range(4):
    for coluna in range(4):
        matriz[linha][coluna] = int(input(f'Digite um valor para [{linha+1}, {coluna+1}]: '))

print('-='*15)

for linha in range(4):
    for coluna in range(4):
        print(f'[{matriz[linha][coluna] :^5}]', end='')
        if matriz[linha][coluna] % 2 == 1:
            imp += matriz[linha][coluna]
    print()

print('-='*15)

print(f' Soma dos impares: {imp}')

print('-='*15)

for linha in range(4):
            somacol += matriz[linha][2]
print(F'Soma da terceira coluna: {somacol}')

print('-='*15)

for linha in range(4):
    for coluna in range(4):
        s+= matriz[linha][coluna]
print(F'Soma da matriz: {s}')

print('-='*15)

for linha in range(4):
    if linha == 0:
     M=matriz[linha][3]
    elif matriz[linha][3] > M:
        M = matriz[linha][3]

print(f'Maior da 4° coluna:{M}')