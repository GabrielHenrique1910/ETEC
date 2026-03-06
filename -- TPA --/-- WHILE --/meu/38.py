s = 0
ma = -1
me = 99999999999
r = 'S'
so = 0
while r == 'S':
    num = int(input('Digite um número:  '))
    r = str(input('Quer continuar?  r:  ')). upper()

    so += 1
    s += num

    if num > ma:
        ma = num
    else: ma = ma

    if num < me:
        me = num
    else: me = me

med = s/so

print(f'média: {med}\nnum maior: {ma}\nnum menor: {me}')