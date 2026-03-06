idd = 0

for cont in range(1, 21):
    print('=-' * 20)
    nome = str(input('Digite seu nome:\n--> '))
    idade = int(input('Digite sua idade:\n--> '))
    print('=-' * 20)

    idd = idd + idade

media = idd / 20

print(f'A média de idades é de {media} ano(s).')