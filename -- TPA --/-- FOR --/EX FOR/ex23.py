nd5 = 0

print('Digite os 50 números:')

for cont in range (1, 5):
    cont = int(input('-->'))

    if cont % 5 == 0:
        nd5 = nd5 + 1

    else:
        nd5 + 0

print(f'Dos 50 números digitados:\nSão divisiveis por três: {nd5} deles')