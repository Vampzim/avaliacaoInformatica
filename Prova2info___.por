programa {
  funcao inicio() {
  cadeia name
  inteiro action
  real aliquot, deduction, voucher, inss, irrf, grossSalary, netSalary, transport, children,baseDeCalculoIrrf

  action=2
  enquanto(action==2){

  escreva("Digite seu nome completo: ")
  leia(name)
  escreva("Digite o salário bruto: ")
  leia(grossSalary)
  escreva("Digite o número de filhos: ")
  leia(children)

//Vale transporte//
  
  
    

//Desconto INSS//

  se(grossSalary <= 1518){
    inss = grossSalary * 0.075

  }
  senao se(grossSalary <= 2793.88){
    inss = grossSalary* 0.09

  }
  senao se(grossSalary <= 4190.83){
    inss = grossSalary* 0.12

  }
senao se(grossSalary <= 5157.41){
  inss = grossSalary* 0.14
}

senao se(grossSalary > 5157.41) {
  inss = 5157.414 * 0.14
}


//Desconto IRRF//

baseDeCalculoIrrf = grossSalary- inss - (children * 189.59)
se(grossSalary <= 2259.20){
  aliquot = 0
  deduction = 0

}
senao se(baseDeCalculoIrrf <= 2826.65){
    aliquot = 0.075
    deduction = 169.44

  }
senao se(baseDeCalculoIrrf <= 3751.05){
    aliquot = 0.15
    deduction = 381.44

  }
senao se(baseDeCalculoIrrf <= 4664.68){
    aliquot = 0.225
    deduction = 662.77

  }
senao se(baseDeCalculoIrrf > 4664.68){
    aliquot = 0.275
    deduction = 896.00 

  }

  irrf = baseDeCalculoIrrf * aliquot - deduction

  se(voucher > transport){
    escreva("Não haverá pagamento de vale transporte nem desconto\n")
    voucher=0
    transport = 0
  }
  senao{
    voucher = grossSalary * 0.06
    transport
  }

  netSalary = grossSalary - inss - irrf ++ transport

  escreva("*************************************\n")
  escreva("Empresa: Freddy's Fazbear\n")
  escreva("Nome do funcionário: " + name + "\n")
  escreva("Salário bruto: R$" + grossSalary + "\n")
  escreva("Número de dependentes(filhos): " + children+ "\n")
  escreva("Valor do desconto(inss): R$" + inss + "\n")
  escreva("Valor do desconto(irrf): R$" + irrf + "\n")
  escreva("Valor do vale transporte: R$" + voucher + "\n")
  escreva("Salário líquido: R$" + netSalary + "\n")
  escreva("*************************************\n")
  
  escreva("Deseja sair? (Digite 1 para Sim e 2 para Não):")
  leia(action)
  

      }
      escreva("Agradecemos pela preferência, tenha um ótimo dia!")
    }
  }
