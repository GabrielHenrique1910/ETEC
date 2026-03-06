continuar = 'S'
map = -1
mep = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
somid = 0
pes = 0

while continuar == 'S':
    idade = int(input('Digite sua idade: '))
    peso = float(input('Digite seu peso: '))
    continuar = str(input('Deseja continuar? [S/N]')).upper()

    pes += 1
    somid += idade

    if peso < mep:
        mep = peso
    else:
        mep = mep

    if peso > map:
        map = peso
    else:
        map = map

med = somid / pes

print(f'''\nMaior peso: {map}
Menor peso {mep}
Média das idades: {med}''')