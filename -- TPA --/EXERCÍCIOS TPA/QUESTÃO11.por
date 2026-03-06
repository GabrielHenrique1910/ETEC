programa {
  funcao inicio() {
    real n, pn, ip

    escreva("Digite um número:\n--> ")
    leia (n)

    se (n % 2 == 0) {
      escreva("Seu número é par")
    }
    senao {
      escreva("Seu número é impar\n")
    }
    se (n >= 0) {
      escreva("Seu número é positivo")
    }
    senao {
      escreva("Seu número é negativo")
    }
  }
}
