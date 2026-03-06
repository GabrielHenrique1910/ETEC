from tkinter import *

def sim():
    antecessor = nprimeiro.get() - 1
    variavel.set(antecessor)

    sucessor = nprimeiro.get() + 1
    variavel.set(sucessor)


root = Tk()
root.title('Antecessor e Sucessor!')
root.geometry('400x400')
root.resizable(False, False)
variavel = StringVar
nprimeiro = DoubleVar

texto = Label(text='Antecessor e sucessor', font=('New Times Roman', '12', 'bold'), fg='white', bg='Black')
texto.place(relx=0.25, rely=0.1)

nprimeiro=Label(text='Digite um Número:', font=('Arial', '11', 'bold'))
nprimeiro.place(relx=0.1, rely=0.25)

numero = Entry(textvariable=nprimeiro, justify='center')
numero.place(relx=0.5, rely=0.25)

but = Button(text='Ver', fg='white', bg='blue', command=def)
but.place(relx=0.4, rely=0.5, relwidth=0.2, relheight=0.15)

resultado = Label(text='Antecessor:', font=('Arial', '11', 'bold'))
resultado.place(relx=0.19, rely=0.7)

resultadof = Label(textvariable=variavel)
resultadof.place(relx=0.5, rely=0.7)



mainloop()
