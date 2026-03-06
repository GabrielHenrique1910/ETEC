from tkinter import *

def soma():
    res = nprimeiro.get() + nsegundo.get()
    variavel.set(res)

root = Tk()
root.title('Soma de dois números')
root.geometry('300x300')
root.resizable(False, False)
variavel = StringVar()
nprimeiro = DoubleVar()
nsegundo = DoubleVar()

texto = Label(text='Soma de dois números', font=('Arial', '12', 'bold'), fg='white', bg='red')
texto.place(relx=0.25, rely=0.1)

primeiro=Label(text='Primeiro Número', font=('Arial', '11', 'bold'))
primeiro.place(relx=0.05, rely=0.25)

numero_primeiro = Entry(textvariable=nprimeiro, justify='center')
numero_primeiro.place(relx=0.5, rely=0.25)

segundo=Label(text='Segundo Número', font=('Arial', '11', 'bold'))
segundo.place(relx=0.05, rely=0.4)

numero_segunda = Entry(textvariable=nsegundo, justify='center')
numero_segunda.place(relx=0.5, rely=0.4)

but = Button(text='Calcular', fg='white', bg='blue', command=soma)
but.place(relx=0.4, rely=0.5, relwidth=0.2, relheight=0.10)

resultado = Label(text='Resultado:', font=('Arial', '11', 'bold'))
resultado.place(relx=0.19, rely=0.7)

resultadof = Label(textvariable=variavel)
resultadof.place(relx=0.5, rely=0.7)

mainloop()
