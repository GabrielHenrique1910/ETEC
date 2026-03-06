lista = [] #Cria uma lista vazia

for i in range(20): #Loop para ler cinco números
    time = str(input(f'Digite o {i+1}º colocado: ')).upper()
    lista.append(time)

if 'JUVENTUDE' in lista:
    pos_juv = lista.index('JUVENTUDE') + 1
    print('=-'*15)
    print(f'\nPOSIÇÃO DO JUVENTUDE:\n --> O Juventude está na {pos_juv}º posição ')
else:
    print('=-' * 15)
    print('\nPOSIÇÃO DO JUVENTUDE:\n -->O Juventude não está na tabela')

print('\nOS 5 PRIMEIROS COLOCADOS:')
for pos, nome in enumerate(lista):
    if pos < 5:
        print(f' --> {pos+1}º - {nome}')

print('\nOS 4 ÚLTIMOS COLOCADOS:')
for pos, nome in enumerate(lista):
    if pos > 15 and pos < 21:
        print(f' --> {pos+1}º - {nome}')

print('\nTIMES EM ORDEM ALFABÉTICA:')
for pos, nome in enumerate(lista):
    if pos < 1:
        lista.sort(key=str.lower)
        print(f' --> {lista}')


