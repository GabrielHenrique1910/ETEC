lista = []

for i in range (5):
    n = int(input('Digite um número:\n --> '))
    lista.append(n)

print('=-'*20)
print('Foram digitados {} números.'.format(len(lista)))

lista.sort(reverse=True)
print(f'Lista de valores ordenada de forma decrescente:\n --> {lista}')

if 5 in lista:
    print('O valor 5 está na lista.')
else:
    print('O valor 5 não está na lista.')