from tkinter import *

def dolar():
    real = float(entry_real.get())
    cotacao = float(entry_cotacao.get())
    dolar = round(real / cotacao, 2)
    resp.config(text=f'Você pode adquirir ${dolar} dólar(es).')

root = Tk()
root.title('REALxDÓLAR')
root.geometry('400x300')
root.configure(bg='lightgrey')

label_real = Label(text='Digite quantos reais você possui em sua carteira:',)
label_real.place(relx=0.18, rely=0.08)

entry_real = Entry()
entry_real.place(relx= 0.34, rely=0.18)

label_caotacao = Label(text='Digite a cotação atual do dólar:')
label_caotacao.place(relx=0.28, rely=0.3)

entry_cotacao = Entry()
entry_cotacao.place(relx=0.34, rely=0.4)

botao = Button(text='Ver', bg='grey', command=dolar)
botao.place(relx=0.46, rely=0.55)

resp = Label(text='')
resp.place(relx=0.27, rely=0.70)

mainloop()