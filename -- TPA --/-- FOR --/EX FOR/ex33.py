qt_ma = 0
qt_me = 0

for cont in range (1, 8):
    ano = int(input('Digite seu ano de nascimento: \n--> '))

    if ano <= 2006:
        qt_ma = qt_ma + 1
    else:
        qt_me = qt_me + 1

print(f'Maiores de idade: {qt_ma} pessoas')
print(f'Menores de idade: {qt_me} pessoas')