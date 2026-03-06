from tkinter import *

def ant():
    antecessor = nprimeiro.get() - 1
    variavel.set(antecessor)
def suc():
    sucessor = nprimeiro.get() + 1
    variavel.set(sucessor)

root = Tk()
root.title('Antecessor e Sucessor!')
root.geometry('400x400')
root.resizable(False, False)
variavel = StringVar
nprimeiro = DoubleVar

texto = Label(text='Antecessor e sucessor', font=('New Times Roman', '14', 'bold'), fg='white', bg='Black')
texto.place(relx=0.20, rely=0.1)

nprimeiro = Label(text='Digite um número:', font=('Arial', '12', 'italic'))
nprimeiro.place(relx=0.1, rely=0.3)

numero = Entry(textvariable=nprimeiro, justify='center')
numero.place(relx=0.5, rely=0.31)

but_suc = Button(text='Calcular Sucessor', fg='white', bg='blue', command=suc)
but_suc.place(relx=0.1, rely=0.5, relwidth=0.25, relheight=0.1)

resultado_suc = Label(text='Resultado:', font=('Arial', '11', 'bold'))
resultado_suc.place(relx=0.19, rely=0.7)

mainloop()