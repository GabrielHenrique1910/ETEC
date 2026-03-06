# 1. Desenvolva um programa em python que simule uma máquina de bebidas com os seguintes preços e códigos:
#1. cola cola = R$3 reais
#2. suco de laranja = R$2,5 reais
#3. água com gas = R$2
#4. água sem gas = R$1,5
#o programa deve:
# 1- apresentar o menu com as opções de bebidas e seus respectivos códigos
# 2- solicitar ao usuario o codigo da bebida desejada
# 3- solicitar o valor a ser pago
# 4- verificar se o valor pago é suficiente
# 5- caso o valor seja suficiente informar o troco e a bebida escollhida
# 6- caso o valor seja insuficiente solicitar que o usuario insira mais dinheiro
# 7- perguntar se o usuario deseja comprar outra bebida

continuar = 'SIM'

while continuar == "SIM":
    bebida = int(input('''\nInsira o Código da bebida desejada:
1. Cola-Cola = R$3,00 
2. Suco de laranja = R$2,50
3. Água com gas = R$2,00
4. Água sem gas = R$1,50 
--> '''))
    if bebida == 1:
        preco = float(input('Valor a ser pago: R$3,00\ncoloque o valor na máquina\n--> '))
        while preco < 3:
            valor = 3
            falta = valor - preco
            preco_falta = float(input(f'O valor inserido não é suficiente, insira mais R${falta}\n--> '))
            preco += preco_falta

        if preco > 3:
            troco = preco - 3
            print(f'O valor inserido foi acima do preço de produto (Coca-Cola - R$3,00), seu troco é de R${troco}')
        else:
            print('Obrigado pela compra!!!')

    if bebida == 2:
        preco = float(input('Valor a ser pago: R$2,50\ncoloque o valor na máquina\n--> '))
        while preco < 2.5:
            valor = 2.5
            falta = valor - preco
            preco_falta = float(input(f'O valor inserido não é suficiente, insira mais R${falta}\n--> '))
            preco += preco_falta

        if preco > 2.5:
            troco = preco - 2.5
            print(f'O valor inserido foi acima do preço de produto (Suco de Laranja - R$2,50), seu troco é de R${troco}')
        else:
            print('Obrigado pela compra!!!')

    if bebida == 3:
        preco = float(input('Valor a ser pago: R$2,00\ncoloque o valor na máquina\n--> '))
        while preco < 2:
            valor = 2
            falta = valor - preco
            preco_falta = float(input(f'O valor inserido não é suficiente, insira mais R${falta}\n--> '))
            preco += preco_falta

        if preco > 2:
            troco = preco - 2
            print(f'O valor inserido foi acima do preço de produto (´Água com gás - R$1,50), seu troco é de R${troco}')
        else:
            print('Obrigado pela compra!!!')

    if bebida == 4:
        preco = float(input('Valor a ser pago: R$1,50\ncoloque o valor na máquina\n--> '))
        while preco < 1.5:
            valor = 1.5
            falta = valor - preco
            preco_falta = float(input(f'O valor inserido não é suficiente, insira mais R${falta}\n--> '))
            preco += preco_falta

        if preco > 1.5:
            troco = preco - 1.5
            print(f'O valor inserido foi acima do preço de produto (Água sem gás - R$1,00), seu troco é de R${troco}')
        else:
            print('Obrigado pela compra!!!')

        if bebida >= 5:
            print('Bebida inexistente!')

    continuar = str(input('\nDeseja fazer mais uma compra? [SIM/NÃO]')).upper()

print('Compra finalizada!')