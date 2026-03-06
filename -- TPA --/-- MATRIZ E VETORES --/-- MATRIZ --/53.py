matriz=[[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
par=0
somacol=0
s=0
for linha in range(6):
    for coluna in range(6):
        matriz[linha][coluna] = int(input(f'Digite um valor para [{linha+1}, {coluna+1}]: '))

print('-='*15)

for linha in range(6):
    for coluna in range(6):
        print(f'[{matriz[linha][coluna] :^5}]', end='')
        if matriz[linha][coluna] % 2 == 0:
            par += matriz[linha][coluna]
    print()

print('-='*15)

print(f'Pares: {par}')

print('-='*15)

for linha in range(6):
            somacol += matriz[linha][4]
print(F'Soma da quinta coluna: {somacol}')

print('-='*15)

for coluna in range(6):

        s+= matriz[5][coluna]
print(F'Soma da quinta linha: {s}')

print('-='*15)

for linha in range(6):
    if linha == 0:
     M=matriz[linha][0]
    elif matriz[linha][0] > M:
      M = matriz[linha]

print(f'Maior da 1° coluna: {M}')