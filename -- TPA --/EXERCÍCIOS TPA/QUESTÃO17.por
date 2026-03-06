programa {
  funcao inicio() {
    real km, val1, val2

    escreva ("Digite a distância será percorrida na viagem (em km):\n-->")
    leia (km)

    se (km <= 200)
    {
      val1 = km * 0.90
      escreva ("O valor da viagem será de R$", val1)
    }
    senao 
    {
      val2 = km * 0.80
      escreva("O valor da viagem será R$", val2)
    }
  }
}
