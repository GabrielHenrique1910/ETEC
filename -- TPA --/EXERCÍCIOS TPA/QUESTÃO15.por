programa {
  funcao inicio() {
    real n1

    escreva("Digite um número:\n--> ")
    leia(n1)

    se (n1 > 50)
    {
      escreva("O número digitado é maior que 50")
    }
    senao se (n1 < 50)
    {
      escreva("O número digitado é menor que 50")
    }
    senao
    {
      escreva("O número digitado é exatamente 50")
    }
  }
}
