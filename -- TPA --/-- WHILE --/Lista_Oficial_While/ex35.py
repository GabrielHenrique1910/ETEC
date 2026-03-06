n = n1 = 0
menu = 1
while menu <= 5:
    n = float(input('Digite um número: '))
    n1 = float(input('Digite mais um número: '))
    menu = int(input('''Digite a Opção desejada: 
    [1] - Soma
    [2] - Multiplicação
    [3] - Subtração
    [4] - Maior e menor
    [5] - Novos números
    [6] - Sair do programa
r: '''))

    if menu == 1:
        soma = n + n1
        print(f'{n} + {n1} = {soma}')
    elif menu == 2:
        multiplicacao = n * n1
        print(f'{n} x {n1} = {multiplicacao}')
    elif menu == 3:
        subtracao = n - n1
        print(f'{n} - {n1} = {subtracao}')
    elif menu == 4:
        if n > n1:
            print(f'{n} > {n1}')
        elif n1 > n:
            print(f'{n1} > {n}')
        else:
            print(f'{n} = {n1}')
    else:
        if menu == 1:
            n = float(input('Digite um número: '))
            n1 = float(input('Digite outro número: '))
            soma = n + n1
            print(f'{n} + {n1} = {soma}')
        elif menu == 2:
            n = float(input('Digite um número: '))
            n1 = float(input('Digite outro número: '))
            multiplicacao = n * n1
            print(f'{n} x {n1} = {multiplicacao}')
        elif menu == 3:
            n = float(input('Digite um número: '))
            n1 = float(input('Digite outro número: '))
            subtracao = n - n1
            print(f'{n} - {n1} = {subtracao}')
        elif menu == 4:
            n = float(input('Digite um número: '))
            n1 = float(input('Digite outro número: '))
            if n > n1:
                print(f'{n} > {n1}')
            elif n1 > n:
                print(f'{n1} > {n}')
            else:
                print(f'{n} = {n1}')
