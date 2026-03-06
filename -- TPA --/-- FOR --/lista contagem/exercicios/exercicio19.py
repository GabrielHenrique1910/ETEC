peso = float(input('Digite seu peso (em Kg): '))
altura = float(input('Digite sua altura (em Metros): '))

imc = peso / (altura ** 2)

if imc < 18.5:
    print('Você está ABAIXO DO PESO.')

elif imc >= 18.5 and imc <= 24.9:
    print('Você está no PESO IDEAL.')
elif imc >= 25 and imc <= 29.9:
    print('Você está em SOBREPESO.')
elif imc >= 30 and imc <= 40:
    print('Você está com OBESIDADE.')

else:
    print('Você está em OBESIDADE MÓRBIDA.')