h = 0
m = 0
total = 0

sexo = -1
while sexo != 0:
    print("\nDigite o sexo do funcionário:")
    print("1 - Homem")
    print("2 - Mulher")
    print("0 - Sair")

    sexo = int(input("Informe o sexo do funcionário (1 para homem, 2 para mulher, 0 para sair): "))

    if sexo == 1:
        h += 1
        total += 1
    elif sexo == 2:
        m += 1
        total += 1
    elif sexo != 0:
        print("Opção inválida. Tente novamente.")

if total > 0:
    media_h = h / total
    media_m = m / total
else:
    media_h = 0
    media_m = 0

print(f"\nQuantidade de homens: {h}")
print(f"Quantidade de mulheres: {m}")
print(f"Média de homens na empresa: {media_h:.2f}")
print(f"Média de mulheres na empresa: {media_m:.2f}")
