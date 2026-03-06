from tkinter import *

def produto():
    numero1 = int(entry_numero1.get())
    numero2 = int(entry_numero2.get())
    numero3 = int(entry_numero3.get())
    produto = numero1 * numero2 * numero3
    resposta.config(text=f'O produto dos números digitados é: {produto}')

root = Tk()
root.title('PRODUTO')
root.geometry('310x210')
root.configure(bg='Lightgrey')

num01_label = Label(text='Digite um número:')
num01_label.place(relx=0.1, rely=0.1)

entry_numero1 = Entry()
entry_numero1.place(relx=0.5, rely=0.11)

num02_label = Label(text='Digite um número:')
num02_label.place(relx=0.1, rely=0.21)

entry_numero2 = Entry()
entry_numero2.place(relx=0.5, rely=0.22)

num03_label = Label(text='Digite um número:')
num03_label.place(relx=0.1, rely=0.32)

entry_numero3 = Entry()
entry_numero3.place(relx=0.5, rely=0.33)

botao = Button(text='Calcular', bg='Grey', command=produto)
botao.place(relx=0.4, rely=0.50)

resposta = Label(bg='Grey' ,font=('arial', '9', 'bold'))
resposta.place(rely=0.70, relx=0.13)

mainloop()