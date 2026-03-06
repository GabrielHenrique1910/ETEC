programa {
  funcao inicio() {
    inteiro ano

    escreva("Digite um ano:\n--> ")
    leia (ano)

    se (ano % 4 == 0)
    {
      escreva("O ano é bissexto")
    }
    senao 
    {
      escreva("O ano não é bissexto")
    }
  }
}
