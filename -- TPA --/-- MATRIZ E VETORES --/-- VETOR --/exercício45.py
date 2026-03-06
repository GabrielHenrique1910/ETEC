lista = [] #Cria uma lista vazia

for i in range(5): #Loop para ler cinco números
    numero = int(input(f'Digite o {i+1}º número: '))
    lista.append(numero)

#Quantidade de números digitados
print('Foram digitados {} números.'.format(len(lista)))

lista.sort(reverse=True) #Lista de valores ordenada de forma decrescente
print(f'Lista de valores ordenada de forma decrescente: {lista}')

if 5 in lista: #Verificar se o 5 está na lista
    print('O valor 5 está na lista')
    
else:
    print('O valor 5 não está na lista')