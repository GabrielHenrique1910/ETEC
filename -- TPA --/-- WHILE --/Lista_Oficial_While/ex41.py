v_per = 0
v_fra = 0
v_taz = 0
v_pat = 0
v_bra = 0
v_nul = 0
v_total = 0


voto = -1

while voto != 0:
    print("\nCandidatos:")
    print("10 - Pernalonga")
    print("30 - Frajola")
    print("42 - Taz")
    print("55 - Patolino")
    print("01 - Branco")
    print("00 - Sair da Eleição")

    voto = int(input("Digite o número do candidato: "))

    if voto == 10:
        v_per += 1
    elif voto == 30:
        v_fra += 1
    elif voto == 42:
        v_taz += 1
    elif voto == 55:
        v_pat += 1
    elif voto == 1:
        v_bra += 1
    elif voto != 0:
        v_nul += 1

    if voto != 0:
        v_total += 1

v_venc = v_per
venc = "Pernalonga"

if v_fra > v_venc:
    v_venc = v_fra
    venc = "Frajola"

if v_taz > v_venc:
    v_venc = v_taz
    venc = "Taz"

if v_pat > v_venc:
    v_venc = v_pat
    venc = "Patolino"

print(f"\nResultado da eleição:")
print(f"Vencedor: {venc} ({v_venc} votos)")

if v_total > 0:
    print(f"\nMédia de votos de cada candidato em relação ao total de votos:")
    print(f"Pernalonga: {v_per}/{v_total}")
    print(f"Frajola: {v_fra}/{v_total}")
    print(f"Taz: {v_taz}/{v_total}")
    print(f"Patolino: {v_pat}/{v_total}")
    print(f"Brancos: {v_bra}/{v_total}")
    print(f"Nulos: {v_nul}/{v_total}")
else:
    print("\nNenhum voto foi computado.")
