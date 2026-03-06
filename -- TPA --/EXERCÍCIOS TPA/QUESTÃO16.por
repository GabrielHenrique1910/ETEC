programa {
  funcao inicio() {
    real vel, mul, res

    escreva("Digite a velocidade com que o carro passou na via:\n--> ")
    leia(vel)

    se (vel > 80)
    {
      mul = (vel - 80) * 7.90
      escreva("O carro ultrapassou a velocidade limite da via e foi multado em R$", mul)
    }
    senao 
    {
      escreva("O carro não ultrapassou a velocidade limite")
    }
  }
}
