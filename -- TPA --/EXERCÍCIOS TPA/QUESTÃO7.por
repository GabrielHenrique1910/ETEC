programa {
  funcao inicio() {
    real a, l, area, tinta

    escreva("Digite a altura da parede (em metros):\n--> ")
    leia (a)
    escreva("DIgite a largura da parede (em metros)\n--> ")
    leia (l)
    
    area = l * a 
    tinta = area / 2.3

    escreva("A área desta parede é de:\n--> ", area, "m²\n", "Sendo assim a quantidade de tinta necessária para conseguir pintar a parede é:\n--> ", tinta, " litros")
  }
}
