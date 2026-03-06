from tkinter import *

def tinta():
    altura = float(entry_altura.get())
    largura = float(entry_largura.get())
    tinta =  round((altura * largura) / 2.3, 2)
    resp.config(text=f'Você precisará de {tinta} latas de tinta \npara pintar a parede.')

root = Tk()
root.title('PAREDExTINTA')
root.geometry('310x210')
root.configure(bg='lightgrey')

label_altura = Label(text='Altura da parede(m):',)
label_altura.place(relx=0.09, rely=0.09)

entry_altura = Entry()
entry_altura.place(relx= 0.49, rely=0.09)

label_largura = Label(text='Largura da parede(m):')
label_largura.place(relx=0.09, rely=0.2)

entry_largura = Entry()
entry_largura.place(relx=0.49, rely=0.2)

botao = Button(text='Ver', bg='grey', command=tinta)
botao.place(relx=0.46, rely=0.40)

resp = Label(text='')
resp.place(relx=0.2, rely=0.68)

mainloop()