primeiro_termo = float(input("Digite o primeiro termo da PA: "))
razao = float(input("Digite a razão da PA: "))
termo_atual = primeiro_termo

print("Os 10 primeiros termos da PA são:")
for cont in range(10):
    print('-',termo_atual,'-', end=' ')
    termo_atual += razao