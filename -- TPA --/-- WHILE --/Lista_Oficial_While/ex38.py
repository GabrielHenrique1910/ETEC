q = 0
s = 0
ma = -1
me = 9999999999999999999999999999999999999999
cont = 'S'

while cont == 'S':
    num = int(input('Digite um número:  '))
    cont = str(input('Quer continuar? [S/N] r:  ')).upper()

    q += 1
    s += num

    if num > ma:
        ma = num
    else:
        ma = ma

    if num < me:
        me = num
    else:
        me = me

med = s/q

print(f'''
média: {med}
número maior: {ma}
número menor: {me}''')