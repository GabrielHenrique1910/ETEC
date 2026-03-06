mu=0
ho=0
se=int
while se !=3:
    se=int(input('Digite seu sexo[1] Mulher [2] Homem [3] parar ---->'))
    if se !=3 and se !=1 and se != 2:
        print('Digite corretamente')

    if se == 1:
        ho+=1

    elif se == 2:
        mu+=1


total=mu+ho
mh=(ho*100)/total
mm=(mu*100)/total
print(f'{ho} homens,{mh}% de homens,{mu} mulheres,{mm}% de mulheres ')