#

idade = int(input('Qual é a sua idade? '))

if idade > 18:
    t = idade - 18
    print('Já passou do tempo de alistamento militar, você está {} ano(s) atrasado.'.format(t))
elif idade < 18:
    t2 = 18 - idade
    print('Você ainda irá se alistar, faltam {} anos para o alistamento.'.format(t2))
else:
    print('Você está na idade de se alistar!')