# Estrutura Condicional

nome = str(input('Digite o nome do aluno: '))
nota1 = float(input('Digite a primeira nota: '))
nota2 = float(input('Digite a segunda nota: '))

media = (nota1 + nota2) / 2

if media >= 7:
    print('O aluno {} foi \033[34mAPROVADO\033[m com média {}.' .format(nome, media))
elif media >= 4 and media < 7:
    print('O aluno {} está de \033[33mRECUPERAÇÃO\033[m com média {}.' .format(nome, media ))
else:
    print('O aluno {} foi \033[31mREPROVADO\033[m com média {}.' .format(nome, media))