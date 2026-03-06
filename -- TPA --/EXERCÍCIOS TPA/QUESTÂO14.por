programa {
  funcao inicio() {
    cadeia nome

    escreva("Qual o nome da capital do Brasil?\n--> ")
    leia (nome)

    se(nome == "Brasília"){
      escreva("Parabéns, você acertou!!!")
    }
    senao se(nome == "BRASÍLIA"){
      escreva("Parabéns, você acertou!!!")
    }
    senao{
      escreva("Você errou")
    }
  }
}
