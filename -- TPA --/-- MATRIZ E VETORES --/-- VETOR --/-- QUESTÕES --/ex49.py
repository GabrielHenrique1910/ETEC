palavras = ["itaquaquecetuba", "geladeira", "desenho", "maracujá", "teclado", "raquete", "jogo"]

for p in palavras:
    v = ""
    for l in p:
        if l in 'aeiou':
            v += l + " "
    print(f'''Na palavra "{p}" temos as vogais: {v}''')
