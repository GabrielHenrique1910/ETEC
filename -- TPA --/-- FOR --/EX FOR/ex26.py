qt_m = 0
qt_h = 0
sal_m = 0
sal_h = 0


for cont in range (1, 16):
    sexo = int(input('Digite seu sexo: \n1- Para feminino; \n2- Para masculino.\n--> '))
    salario = float(input('Digite seu salário: \n--> '))
    print('=-' * 10)

    if sexo == 1:
        qt_m = qt_m + 1
        sal_m = sal_m + salario
    elif sexo == 2:
        qt_h = qt_m + 1
        sal_h = sal_h + salario
    else:
        print('Opção inválida.')
        print('=-' * 10)

if qt_h > 0 and qt_m > 0:
    media_h = sal_h / qt_h
    media_m = sal_m / qt_m
    print(f'Média do salário dos homens: {media_h}')
    print(f'Média do salário das mulheres: {media_m}')
elif qt_m > 0:
    media_m = sal_m / qt_m
    print(f'Média do salário das mulheres: {media_m}')
else:
    print(f'Média do salário dos homens: {media_h}')
    media_h = sal_h / qt_h

