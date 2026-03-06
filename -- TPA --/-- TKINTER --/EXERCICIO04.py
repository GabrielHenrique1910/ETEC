from tkinter import *

def cm_mm():
    metros = float(entry_metros.get())
    cm = metros * 100
    mm = metros * 1000
    resp.config(text=f'Cm = {cm} \nmm = {mm}')

root = Tk()
root.title('CMxMM')
root.geometry('310x210')
root.configure(bg='lightgrey')
root.resizable(False, False)

label_metros = Label(text='Digite um valor em metros:')
label_metros.place(rely=0.1, relx=0.25)

entry_metros = Entry()
entry_metros.place(rely=0.25, relx=0.3)

botao = Button(text='Converter',bg='grey', command=cm_mm)
botao.place(rely=0.45, relx=0.40)

resp = Label()
resp.place(rely=0.65, relx=0.37)

mainloop()