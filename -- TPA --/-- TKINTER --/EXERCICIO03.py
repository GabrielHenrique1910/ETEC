from tkinter import *

def media():
    nota1 = float(entry_nota1.get())
    nota2 = float(entry_nota2.get())
    nota3 = float(entry_nota3.get())
    nota4 = float(entry_nota4.get())
    media = (nota1 + nota2 + nota3 + nota4) / 4
    resultado.config(text=f'A média do aluno é: {media:.2f}')

root = Tk()
root.title('Nota Média')
root.geometry('310x210')
root.configure(bg='lightgrey')

label = Label(text='Digite as notas do aluno para descobrir sua média:')
label.place(relx=0.5, rely=0.1, anchor=CENTER)

nota1_label = Label(text='1° nota: -->')
nota1_label.place(relx=0.27, rely=0.3, anchor=CENTER)

entry_nota1 = Entry()
entry_nota1.place(relx=0.6, rely=0.3, anchor=CENTER)

nota2_label = Label(text='2° nota: -->')
nota2_label.place(relx=0.27, rely=0.4, anchor=CENTER)

entry_nota2 = Entry()
entry_nota2.place(relx=0.6, rely=0.4, anchor=CENTER)

nota3_label = Label(text='3° nota: -->')
nota3_label.place(relx=0.27, rely=0.5, anchor=CENTER)

entry_nota3 = Entry()
entry_nota3.place(relx=0.6, rely=0.5, anchor=CENTER)

nota4_label = Label(text='4° nota: -->')
nota4_label.place(relx=0.27, rely=0.6, anchor=CENTER)

entry_nota4 = Entry()
entry_nota4.place(relx=0.6, rely=0.6, anchor=CENTER)

botao = Button(text='Calcular', command=media)
botao.place(relx=0.5, rely=0.75, anchor=CENTER)

resultado = Label(text='', font=('Times New Roman', '11', 'bold'))
resultado.place(relx=0.5, rely=0.90, anchor=CENTER)

root.mainloop()