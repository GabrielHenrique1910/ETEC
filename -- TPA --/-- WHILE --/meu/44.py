t=0
a=0
o=0
m=0
filme = 1

while  filme > 0 and filme < 5 :


     filme=int(input('''Digite qual filme você verá:\nThor: amor trovão[1]\nAvengers[2]\nO outro eu[3]\nMinons 2[4]\n ----->'''))

     if filme == 1:
          t+=1

     elif filme == 2:
          a+=1

     elif filme == 3:
          o+=1

     elif filme == 4:
          m+=1


s=t+a+o+m

p1=(100*t)/s
p2=(100*a)/s
p3=(100*o)/s
p4=(100*m)/s

print(f'{s} pessoas foram no cinema,dessas, {t} foram na sala 1; {a} na sala 2; {o} na sala 3; {m} na sala 4,com às porcentagens de {p1}%, {p2}%, {p3}% e {p4}%')