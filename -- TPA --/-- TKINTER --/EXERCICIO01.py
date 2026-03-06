from tkinter import *

from tkinter import *

def mostrar_sucessor_antecessor():
    numero = int(entry_numero.get())
    sucessor = numero + 1
    antecessor = numero - 1
    resultado.config(text=f"Sucessor: {sucessor}\nAntecessor: {antecessor}")

root = Tk()
root.title("Sucessor e Antecessor")
root.geometry("310x200")
root.configure(bg='grey')

label_numero = Label(root, text="Digite um número inteiro:", bg='black', fg='white')
label_numero.grid(row=0, column=0, padx=10, pady=10)

entry_numero = Entry(root)
entry_numero.grid(row=0, column=1, padx=10, pady=10)

botao_mostrar = Button(root, text="Mostrar", bg='black', fg='white', command=mostrar_sucessor_antecessor)
botao_mostrar.place(relx=0.39, rely=0.3)

resultado = Label(text='', font=('Arial', '11', 'bold'))
resultado.place(relx=0.32, rely=0.7)

root.mainloop()
