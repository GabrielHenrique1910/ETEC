soma_sal = 0
maior_idd = -9999999
menor_idd = 9999999
femeas_rs100 = 0
num_pessoas = 0

for cont in range (999):
    idade = int(input('Digite sua idade:\n--> '))
    sexo = int(input('Digite o número correspondente a seu sexo:\n   1- MASCULINO\n   2- FEMININO \n--> '))
    salario = float(input('Digite seu salário: \n--> '))

    if idade > 0:
        num_pessoas =+ 1
    else:
        break

    soma_sal =+ salario

    if idade > maior_idd:
        maior_idd = idade
    else:
        maior_idd = maior_idd

    if idade < menor_idd:
        menor_idd = idade
    else:
        menor_idd = menor_idd

    if sexo == 2 and salario <= 100:
        femeas_rs100 =+ 1



if num_pessoas > 0:
    med =  soma_sal / num_pessoas
    print(f'Média de salário do grupo: {med}')
print(f'Menor idade: {menor_idd}\nMaior idade: {maior_idd}')
print(f'Número de mulheres com salário de até R$100,00: {femeas_rs100}')