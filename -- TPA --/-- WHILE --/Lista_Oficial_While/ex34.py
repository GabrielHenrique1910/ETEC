sexo = str

while sexo != "M" and sexo != "F":
    sexo = str(input('Digite seu sexo: ')).upper()
    if sexo != "M" and sexo != "F":
        print('Valores não cadastrados, insrira um sexo válido!')

print('Sexo cadastrado com sucesso!!!')