soma = 0

for cont in range(1, 501):
    if cont % 3 == 0 and cont % 2 != 0:
        soma = soma + cont
    print(cont)
print(f"A soma dos números ímpares múltiplos de 3 no intervalo de 1 a 500 é: {soma}")
