# Escreva um programa que pergunte o salário de um funcionário e calcule o valor do seu aumento. Para salários superiores a R$1550,00, calcule um aumento de 10%. Para os inferiores ou iguais, o aumento é de 17%.

sal = float(input('Digite o valor de seu salário: '))

if sal > 1550:
    aum = (sal * 0.10) + sal
    print('O valor do seu novo salário com o aumento é de: R${}'.format(aum))
else:
    aum2 = (sal * 0.17) + sal
    print('O valor do sewu novo salário com o aumento é de: R${}'.format(aum2))