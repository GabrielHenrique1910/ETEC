num_p = 0
som_p = 0
num_n = 0
num_0 = 0

print('Digite os 40 números')

for cont in range (1, 41):
    cont = float(input('--> '))

    if cont > 0:
        num_p = num_p + 1
        som_p = som_p + cont
    elif cont < 0:
        num_n = num_n + 1
    else:
        num_0 = num_0 + 1

if num_p > 0:
    med_num_p = som_p / num_p
else:
    med_num_p = 0

print(f'Números positivos: {num_p} \nSoma dos positivos: {som_p} \nNúmeros negativos: {num_n} \nMédia dos positivos: {med_num_p}, Números zeros: {num_0}')