from tkinter import *

class Application:
    def __init__(self, master = None):
        self.widget1 = Frame(master)
        self.widget1.pack()
        self.msg = Label(self.widget1, text='Seja bem Vindo!')
        self.msg['font'] = ('Verdana','20','bold')
        self.msg.pack()
        self.sair = Button(self.widget1)
        self.sair['text'] = 'Clique aqui'
        self.sair['font'] = ('Calibre','12')
        self.sair['width'] = 5
        self.sair.bind('<Button-1>', self.mudarTexto)
        self.sair.pack()

        def mudarTexto(self, event):
            if self.msg['text'] == 'Seja bem Vindo!':
                self.msg['text'] = 'Você acabou de clicar no botão'
            else:
                self.msg['text'] = 'Primeiro widget'

root = Tk()
Application(root)
root.mainloop()