programa {
  funcao inicio() {
    real p, pm7, v

    escreva("Digite o valor de um produto:\n--> ")
    leia(p)
    
    pm7 = p * 0.07 
    v = p - pm7
    escreva("O valor do produto com 7% de desconto é:\n--> ", v, " reias")
  }
}
