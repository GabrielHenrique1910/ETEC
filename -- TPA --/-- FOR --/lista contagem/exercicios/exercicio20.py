pr = float(input('Digite o preço do produto a ser pago: R$'))
pag = int(input('\nDigte a forma de pagamento (o número dela):\n1- À VISTA din/che (DINHEIRO/CHEQUE);\n2- À VISTA car (CARTÃO);\n3- ATÉ 2X (CARTÃO);\n4- 3X OU MAIS (CARTÃO);\nr: '))

if pag == 1:
    pr1 = pr - (pr * 0.10)
    print('\nValor a ser pago: {}'.format(pr1))

elif pag == 2:
    pr2 = pr - (pr * 0.05)
    print('\nValor a ser pago: {}'.format(pr2))
elif pag == 3:
    print(''Valor a ser pago {}).format(pr)

elif pag == 4:
    pr3 = pr + (pr * 1.20)
    print('Valor a ser pago {}'.format(pr3))

