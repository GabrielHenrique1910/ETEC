#Faça um programa que leia o nome, a nota da PR1 e a nota da PR2 de 1 aluno. Imprimir: nome, nota da PR1, nota da PR2, média aritmética e uma das mensagens: AP, RP ou PF  (a média é 7 para aprovação (AP), menor que 3 para reprovação (RP) e as demais em prova final (PF)).

nome    = str(input('Digite o nome do aluno: '))
nota1   = float(input('Digite a nota da primeira prova: '))
nota2   = float(input('Digite a nota da primeira prova: '))

print('\033[33mNOME:\033[m {}\n\033[33mNOTA - PRIMEIRA PROVA:\033[m {}\n\033[33mNOTA - SEGUNDA PROVA:\033[m {}'.format(nome, nota1, nota2))

me = (nota1 + nota2) / 2
print(input('\033[33mMÉDIA:\033[m {}'.format(me)))

if me > 7:
    print('RESUTADO: AP')
elif me <= 3:
    print('RESULTADO: RP')
else:
    print('RESULTADO: PF')