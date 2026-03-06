from tkinter import *

def conversao():
    C = float(entry_c.get())
    F = C * 1.8 + 32
    resp.config(text=f'Fahrenheit: {F}')

root = Tk()
root.title("C° --> °F")
root.geometry('310x210')
root.configure(bg='Lightgrey')
root.resizable(False, False)

label = Label(text='CONVERSOR \nCELSIUS --> FAHRENHEIT', font=('arial', '9', 'bold'))
label.place(relx=0.27, rely=0.07)

label_f = Label(text='Celsius:')
label_f.place(relx=0.2, rely=0.4)

entry_c = Entry()
entry_c.place(relx=0.4, rely=0.4)

botao = Button(text='Converter', bg='grey', command=conversao)
botao.place(relx=0.4, rely=0.63)

resp = Label()
resp.place(relx=0.36, rely=0.83)

mainloop()