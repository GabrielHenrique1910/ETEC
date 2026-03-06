#

emp = float(input('Digite o valor da empréstimo a ser feito: R$'))
sal = float(input('Digite o valor do seu salário: R$'))
temp = float(input('Em quantos meses pretende pagar? '))

pres = emp / temp
prc = (sal * 0.30) + sal

if pres > prc:
    print('Empréstimo NEGADO')
else:
    print('Empréstimo ACEITO!')
