inicio = int(input("Digite o inicio de sua contagem: "))
fim = int(input('Digite o fim de sua contagem: '))
passoapasso = int(input('Passo: '))

for cont in range (inicio, fim+1, passoapasso):
    print(cont)
print('Fim da Contagem!')

