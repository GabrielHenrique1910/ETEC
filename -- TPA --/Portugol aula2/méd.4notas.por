programa {
  funcao inicio() {
    real n1, n2, n3, n4, m

    escreva("Digite a primeira nota! \n>>>")
    leia(n1)
    escreva("Digite a segunda nota! \n>>>")
    leia(n2)
    escreva("Digite a terceira nota! \n>>>")
    leia(n3)
    escreva("Digite a quarta nota! \n>>>")
    leia(n4)
    
    m = (n1 + n2 + n3 + n4) / 4

    escreva("A média das quatro notas digitadas é de: \n>>>", m)

    se(m >= 7) {
      escreva("\nParabéns, aluno APROVADO!!!")}
      senao {
        escreva("\nInfelizmente o aluno foi REPROVADO!")
      }
    
  }
}
