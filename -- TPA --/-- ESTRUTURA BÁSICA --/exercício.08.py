#Exercício 08 - Desconto de 7%

p = float(input('Digite o preço do produto desejado: R$'))

des = (p * 0.07)
np = p - des

print('O novo valor do produto com 7% de desconto é: R${}'.format(np))