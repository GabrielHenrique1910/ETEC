from tkinter import *

def antecessor_():
    '''OBTER VALORES DAS ENTRADAS'''
    antecessor = int(entry_antecessor.get())

    '''CALCULAR ESTOQUE MÉDIO'''
    antecessor_ = (antecessor) - 1

root = Tk()
root.title('Antecessor e Sucessor')

root.configure(bg='lightblue')

label_numero = Label(root, text='Estoque Mínimo')
label_numero.grid(row=0, column=0, padx=10, pady=10)

entry_numero = Entry(root)
entry_numero.grid(row=0, column=1, padx=10, pady=10)

button_calcular = Button(root, text='Calcular Estoque Médio:', command=antecessor_ )
button_calcular.grid(row=3, column=0, pady=10, padx=10)

resultado_suc = Label(text='Resultado:', font=('Arial', '11', 'bold'))
resultado_suc.place(relx=0.19, rely=0.7)

mainloop()