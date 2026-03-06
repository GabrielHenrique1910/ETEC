from tkinter import *

def desconto():
    preco = float(entry_preco.get())
    desconto = preco - (preco * 0.07)
    resultado.config(text=f"O preço do produto com desconto \né de R${desconto}")

root = Tk()
root.title('Desconto 7%')
root.geometry('310x210')
root.configure(bg='lightgrey')

preco_label = Label(text='Digite o preço do produto:', bg='black', fg='white')
preco_label.grid(row=0, column=0, padx=10, pady=10)

entry_preco = Entry()
entry_preco.grid(row=0, column=1, padx=10, pady=10)

botao = Button(text='Mostrar', bg='black', fg='white', command=desconto)
botao.place(relx=0.39, rely=0.3)

resultado = Label(text='', font=('Times New Roman', '11', 'bold'))
resultado.place(relx=0.12, rely=0.6)

mainloop()