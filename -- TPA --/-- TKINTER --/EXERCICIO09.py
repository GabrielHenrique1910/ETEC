from tkinter import *

def aumento():
    salario = float(entry_salario.get())
    aumento = salario + (salario * 0.15)
    resultado.config(text=f"Seu novo salário com o aumento \né R${aumento}")

root = Tk()
root.title('Aumento 15%')
root.geometry('310x210')
root.configure(bg='lightgrey')

salario_label = Label(text='Digite o valor do salário:', bg='black', fg='white')
salario_label.grid(row=0, column=0, padx=10, pady=10)

entry_salario = Entry()
entry_salario.grid(row=0, column=1, padx=10, pady=10)

botao = Button(text='Aumento', bg='black', fg='white', command=aumento)
botao.place(relx=0.39, rely=0.3)

resultado = Label(text='', font=('Times New Roman', '11', 'bold'))
resultado.place(relx=0.12, rely=0.6)

mainloop()