cd_mais_gordo = 0
p_mais_gordo = -1
cd_mais_magro = 0
p_mais_magro = 99999

for i in range(1, 91):
    codigo = input("Digite o código de identificação do boi: ")
    peso = float(input("Digite o peso do boi: "))

    if peso > peso_mais_gordo:
        peso_mais_gordo = peso
        codigo_mais_gordo = codigo

    if peso < peso_mais_magro:
        peso_mais_magro = peso
        codigo_mais_magro = codigo

print(f"\nO boi mais gordo é o com código {codigo_mais_gordo} e peso {peso_mais_gordo} kg.")
print(f"O boi mais magro é o com código {codigo_mais_magro} e peso {peso_mais_magro} kg.")
