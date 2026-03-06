voto = int(input('Digite o número da sala que irá assistir o filme:  '))
s1 = 0
s2 = 0
s3 = 0
s4 = 0

while voto < 5:
    if voto == 1:
        voto = int(input('Digite o número da sala que irá assistir o filme:  '))
        s1 += 1

    elif voto == 2:
        voto = int(input('Digite o número da sala que irá assistir o filme:  '))
        s2 += 1

    elif voto == 3:
        voto = int(input('Digite o número da sala que irá assistir o filme:  '))
        s3 += 1

    elif voto == 4:
        voto = int(input('Digite o número da sala que irá assistir o filme:  '))
        s4 += 1

med = (s1 + s2 + s3 + s4)/4

s1100 = (s1/(s1 + s2 + s3 + s4)) * 100
s2100 = (s2/(s1 + s2 + s3 + s4)) * 100
s3100 = (s3/(s1 + s2 + s3 + s4)) * 100
s4100 = (s4/(s1 + s2 + s3 + s4)) * 100

print(f'''\nQuantidade de pessoas por sala:
    - Thor - Amor e Trovão --> {s1}
    - Avengers --> {s2}
    - O Outro Eu --> {s3}
    - Minions 2 --> {s4}''')

print(f'\nMédia GERAL de pessoas: {med} pessoas por sala')

print(f'''\nPorcentagem de pessoas qe vão assistir o filme: 
    - Thor - Amor e Trovão --> {s1100}
    - Avengers --> {s2100}
    - O Outro Eu --> {s3100}
    - Minions 2 --> {s4100}''')