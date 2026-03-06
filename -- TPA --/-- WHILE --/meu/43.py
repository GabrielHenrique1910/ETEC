md = 0
map = -1
mep = 999999999999999999999
ida = 0
soi = 0
cont = 'S'

while cont == 'S':
    idade=float(input('digite sua idade'))
    peso = int(input('digite seu peso'))
    ida+=1
    soi+=idade
    cont=str(input('Deseja acresentar uma idade? S/N')).upper()


    if map == 0 and mep == 0:
        peso = map
        peso = mep

    else:
        if peso > map:
            map = peso

        elif mep > peso:
            mep = peso


m=soi/ida

print(f"o maior peso registrado foi em kg {map} e o menor peso {mep}\n e a media das idades é {m}")



