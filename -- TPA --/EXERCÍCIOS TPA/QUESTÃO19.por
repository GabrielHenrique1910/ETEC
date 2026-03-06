programa {
  funcao inicio() {
    real sal, aum, aum2

    escreva("Digite o salário do funcionário:\n--> ")
    leia(sal)

    se (sal > 1550)
    {
     aum = sal * 1.10
     escreva("O seu novo salário com o aumento é de R$", aum)
    }
    senao 
    {
     aum2 = sal * 1.17
     escreva("O seu novo salário com o aumento é de R$", aum2)
    }
  }
}
