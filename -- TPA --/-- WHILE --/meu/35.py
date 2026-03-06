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
        s = n + n1
        print(f'a soma é {s}')
    elif menu == 2:
        x = n * n1
        print(f' a multiplição é {x}')
    elif menu == 3:
        sub = n - n1
        print(f' a subtração é {sub}')
    elif menu == 4:
        if n > n1:
            print(f'{n} é o maior')
        elif n1 > n:
            print(f'{n1} é o maior')
        else:
            print(f'ambos são iguais')
    else:
        n = float(input('Digite um número: '))
        n1 = float(input('Digite outro número: '))
        if menu == 1:
            s = n + n1
            print(f'a soma é {s}')
        elif menu == 2:

            x = n * n1
            print(f' a multiplição é {x}')
        elif menu == 3:

            sub = n - n1
            print(f' a subtração é {sub}')

        elif menu == 4:

            if n > n1:

                print(f'{n} é o maior')
            elif n1 > n:

                print(f'{n1} é o maior')
            else:
                print(f'São iguais')