produtos = [("Arroz", 5.99),("Feijão", 7.49),("Macarrão", 3.25),("Óleo", 4.85),("Leite", 3.99),("Açúcar", 2.99),("Café", 10.90)]

print("-" * 40)
print("{:<20} {:>15}".format("PRODUTO", "PREÇO (R$)"))
print("-" * 40)

for produto, preco in produtos:
    print("{:<20} {:>15.2f}".format(produto, preco))

print("-" * 40)

