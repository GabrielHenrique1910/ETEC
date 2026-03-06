programa {
  funcao inicio() {
    real n1, n2

    escreva ("Digite um número aleatório! \n>>>")
    leia (n1)

    escreva ("Digite outro número! \n>>>")
    leia (n2)

    se (n1 >= n2) {
      escreva (n2,",", n1)
    }
    senao {
      escreva (n1, ",", n2)
    }

    
  }
}
