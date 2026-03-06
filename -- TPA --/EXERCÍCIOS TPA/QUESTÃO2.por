programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real n, d, t, rq
     
    escreva ("Digite um número! \n")
    leia (n)

    d = n * 2
    t = n * 3
    rq = mat.raiz(n, 2,0)

  escreva("\nDobro:", d, "\nTriplo:", t, "\nRaiz quadrada:", rq)
  }
}
