#Faça um programa que leia o nome da capital do Brasil. Se a resposta estiver correta, imprimir PARABÉNS, caso contrário, ERROU. (Considerar: BRASÍLIA ou Brasília).

cap = str(input('Qual é nome da capital do Brasil? r:'))

if cap == 'BRASÍLIA':
    print('Você acertou, parabéns!')
elif cap == 'Brasília':
    print('Você acertou, parabéns!')
else:
    print('Você errou! Tente novamente.')