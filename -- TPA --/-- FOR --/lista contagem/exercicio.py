from tkinter import *
from tkinter import messagebox

def soma():
    n1 = float(entry_n1.get())
    n2 = float(entry_n2.get())

    soma = n1 + n2
    messagebox.showinfo('Resultado', f'{n1} + {n2} = {soma}')

def subtracao():
    n1 = float(entry_n1.get())
    n2 = float(entry_n2.get())

    subtracao = n1 - n2
    messagebox.showinfo('Resultado', f'{n1} - {n2} = {subtracao}')

def multiplicacao():
    n1 = float(entry_n1.get())
    n2 = float(entry_n2.get())

    multiplicacao = n1 * n2
    messagebox.showinfo('Resultado', f'{n1} * {n2} = {multiplicacao}')

def divisao():
    n1 = float(entry_n1.get())
    n2 = float(entry_n2.get())

    divisao = n1 / n2
    messagebox.showinfo('Resultado', f'{n1} / {n2} = {divisao}')

root = Tk()
root.title ('Calculadora')
root.configure(bg='lightgrey')

label_n1 = Label(text='Digite um número: ')
label_n1.pack(pady=5)
entry_n1 = Entry()
entry_n1.pack(pady=5)

label_n2 = Label(text='Digite outro número: ')
label_n2.pack(pady=5)
entry_n2 = Entry()
entry_n2.pack(pady=5)

bt_mais = Button(text='ADIÇÂO', command=soma)
bt_mais.pack()

bt_menos = Button(text='SUBTRAÇÂO', command=subtracao)
bt_menos.pack()

bt_multi = Button(text='MULTIPLICAÇÃO', command=multiplicacao)
bt_multi.pack()

bt_divi = Button(text='DIVISÃO', command=divisao)
bt_divi.pack()

mainloop()