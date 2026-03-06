programa {
  funcao inicio() {
    real gf, gc, vf

    escreva("DIgite a temperatura em graus fahrenheit:\n--> ")
    leia(gf)

    gc = gf-32 / 9
    vf = gc / 5

    escreva("A tempertura convertida para graus celcius é:\n-->", vf)
  }
}
