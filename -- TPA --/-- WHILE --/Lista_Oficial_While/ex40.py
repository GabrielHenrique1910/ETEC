qt_h = qt_m = id_h = id_m = 0
me_id_h = me_id_m = 9999999999999999999999999999999
ma_id_h = ma_id_m = -1
cont = 'S'

while cont == "S":
    genero = str(input('Digite seu gênero [M/F]: ')).upper()
    idade = int(input('Digite sua idade: '))
    cont = str(input('Deseja continuar? [S/N]: ')).upper()

    if genero == 'M':
        qt_h += 1
        id_h += idade

        if idade < me_id_h:
            me_id_h = idade
        else:
            me_id_h = me_id_h

        if idade > ma_id_h:
            ma_id_h = idade
        else:
            ma_id_h = ma_id_h

    elif genero == 'F':
        qt_m += 1
        id_m += idade

        if idade < me_id_m:
            me_id_m = idade
        else:
            me_id_m =me_id_m

        if idade > ma_id_m:
            ma_id_m = idade
        else:
            ma_id_m = ma_id_m

    else:
        print('Gênero não existente :(')
if qt_h > 0:
    med_h = id_h / qt_h
else:
    med_h = 0

if qt_m > 0:
    med_m = id_m / qt_m
else:
    med_m = 0

print(f'''\nMÉDIA DAS IDADES:
Homens: {med_h}
Mulheres: {med_m}\n
MENORES IDADES:
Homens: {me_id_h}
Mulheres: {me_id_m}\n
MAIORES IDADES:
Homens: {ma_id_h}
Mulheres: {ma_id_m}''')