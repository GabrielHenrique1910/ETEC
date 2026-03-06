#Um comerciante comprou um produto e quer vendê-lo com um lucro de 45% se o valor da compra for menor que R$ 20,00 caso contrário, o lucro será de 30%. Faça um algoritmo e o fluxograma que leia o valor do produto e imprima o valor da venda.

pr = float(input('Digite o valor do preço: R$'))

if pr < 20:
    luc = (pr * 0.45) + pr
    print('O valor da venda vai ser de: R${}'.format(luc))
elif pr > 20:
    luc2 = (pr * 0.30) + pr
    print('O valor de venda vai ser de: R${}'.format(luc2))