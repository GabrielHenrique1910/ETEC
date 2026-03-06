programa {
  funcao inicio() {
    inteiro n1, n2

    escreva("Digite um número aleatório:\n--> ")
    leia(n1)
    escreva("Digite outro número:\n--> ")
    leia(n2)

    se (n1 > n2)
    {
      escreva("O primeriro valor é maior e o segundo é menor")  
    }
    senao se (n2 > n1)
    {
      escreva("O segundo valor é maior e o primeiro é menor")
    }
    senao
    {
      escreva("Não existe um valor maior ou menor, os dois são iguais")
    }
  }
}
