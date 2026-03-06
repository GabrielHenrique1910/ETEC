from tkinter import *
import math
from tkinter import messagebox

def d_t_rq():
    num = float(entry_num.get())
    dobro = num * 2
    triplo = num * 3
    raiz2 = math.sqrt(num)
    raizO = round(raiz2, 2)
    messagebox.showinfo("" f='dobro:{dobro}\ntriplo: {triplo}\nraiz: {raiz0}')

root = Tk()
root.title('Dobro, Triplo e Raiz Quadrada')
root.geometry('310x200')
root.configure(bg='lightgrey')

num_label = Label(text='Digite um número:', bg='black', fg='white')
num_label.grid(row=0, column=0, padx=10, pady=10)

entry_num = Entry()
entry_num.grid(row=0, column=1, padx=10, pady=10)

botao = Button(text='Mostrar', bg='black', fg='white', command=d_t_rq)
botao.place(relx=0.39, rely=0.3)

resultado = Label(text='', font=('Times New Roman', '11', 'bold'))
resultado.place(relx=0.28, rely=0.6)

mainloop()