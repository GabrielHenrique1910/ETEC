from tkinter import *

def calcular_estoque_medio():
    '''OBTER VALORES DAS ENTRADAS'''
    estoque_minimo = float(entry_estoque_minimo.get())
    estoque_maximo = float(entry_estoque_minimo.get())

    '''CALCULAR ESTOQUE MÉDIO'''
    estoque_medio = (estoque_maximo + estoque_minimo) / 2

    '''EXIBIR RESULTADOS'''
    Messagebox.showinfo('Resultado', f'Estoque Médio: {estoque_medio}')

'''CONFIGURAÇÃO DA JANELA'''
root = Tk()
root.title('Estoque Médio')

'''ALTERAR A COR DE FUNDO DA JANELA'''
root.configure(bg='lightblue')

'''ETIQUETAS DE ENTRADAS PARA OS VALORES'''
label_estoque_minimo = Label(root, text='Estoque Mínimo')
label_estoque_minimo.grid(row=0, column=0, padx=10, pady=10)

entry_estoque_minimo = Entry(root)
entry_estoque_minimo.grid(row=0, column=1, padx=10, pady=10)

label_estoque_maximo = Label(root, text='Estoque Máximo')
label_estoque_maximo.grid(row=1, column=0, padx=10, pady=10)

entry_estoque_maximo = Entry(root)
entry_estoque_maximo.grid(row=1, column=1, padx=10, pady=10)

'''BOTÃO PARA CALCULAR O ESTOQUE MÉDIO'''
button_calcular = Button(root, text='Calcular Estoque Médio:', command=calcular_estoque_medio, )
button_calcular.grid(row=3, column=0, pady=10, padx=10)

mainloop()