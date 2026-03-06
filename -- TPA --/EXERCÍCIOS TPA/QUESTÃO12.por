programa {
  funcao inicio() {
    real n1, n2, adc, mul, sub

    escreva("Digite um número:\n--> ")
    leia(n1)
    escreva("Digite outro número:\n--> ")
    leia(n2)

    adc = n1 + n2
    escreva("O resultado da adição entre os dois números resulta em: ", adc)

    se (n2 > 15)
    {
      sub = n1 - n2
      escreva("\nO resultado da subtração entre os dois números resulta em: ", sub)
    }
    se (n2 > 100)
    {
      mul = n1 * n2 
      escreva("\nO resultado da multiplicação entre os dois números resulta em: ", mul)
    }
  }
}
