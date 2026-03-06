per = 0
f = 0
ta = 0
pat = 0


opc = int


while opc != 00:
    opc = int(input('''10-pernalonga\n30-frajola\n42-Taz\n55-patolino\n1- Voto em branco\n00-sair das eleições \n-->'''))


    if opc != 10 and opc != 30 and opc != 42 and opc != 55 and opc != 1 and opc != 00:
        print('NULO')



    if opc == 10:
        per = per + 1

    elif opc == 30:
        f = f + 1

    elif opc == 42:
        ta = ta + 1

    elif opc == 55:
        pat = pat + 1




if per>f and per>ta and per>pat:

    print(f'Pernalonga ganhou com {per} votos')

elif f>per and f>ta and f > pat:
    print(f'Frajola ganhou com {f} votos')

elif ta > per and ta > pat and ta > f:
    print(f'Taz ganhou com {ta} votos')

elif pat>per and pat>ta and pat> f:
    print(f'Patolino ganhou com {pat} votos')


total=per+f+ta+pat
pp=(100*per)/total
pf=(100*f)/total
pta=(100*ta)/total
ppat=(100*pat)/total

print(f'''porcentagem de cada candidato \nPernalonga:{pp}%\nFrajola:{pf}%\nTaz:{pta}%\nPatolino:{ppat}%''')