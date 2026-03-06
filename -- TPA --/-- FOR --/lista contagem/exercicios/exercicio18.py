l1 = float(input('Digite a medida de um dos lados do triângulo: '))
l2 = float(input('Digite a medida do outro lado: '))
l3 = float(input('Digite a medida do lado restante: '))

if l1 == l2 and l1 == l3:
    print('\nO triângulo é equilátero!\n\n')
elif l1 != l2 and l1 != l3:
    print('\nO triângulo é escaleno!\n\n')
else:
    print('\nO triângulo é isósceles!\n\n')