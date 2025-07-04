programa {
  funcao inicio() {

    real transport, employeeName, grossSalary, transportDiscount, socialSecurity,
    incomeTax, incomeTaxBase
    inteiro dependents
    cadeia employeeName, opcao = "Sim"

    enquanto (opcao == "Sim" ou opcao == "sim") {

    escreva("Digite seu nome completo: \n")
    leia(employeeName)

    escreva("Digite o valor do seu salário: R$ \n")
    leia(grossSalary)

    escreva("Quantos filhos e/ou dependentes você possui? \n")
    leia(dependents)

    transport = 350

    transportDiscount = grossSalary * 0.06


    se (grossSalary <= 1518){
      socialSecurity = grossSalary * 0.075
    }
    senao se (grossSalary <= 2793.88){
      socialSecurity = grossSalary * 0.09
    }
    senao se (grossSalary <= 4190.83){
      socialSecurity = grossSalary * 0.12
    }
    senao se(grossSalary <= 5157.43){
      socialSecurity = grossSalary * 0.14
    }
    senao se (grossSalary > 5157.43){
      socialSecurity = 5157.43 * 0.14
    }

    incomeTaxBase = grossSalary - socialSecurity - (dependents * 189.59)
    se (incomeTaxBase < 2259.20)
    se(incomeTaxBase >= 2259.20 e incomeTaxBase <= 2826.65){
      incomeTax = (incomeTaxBase * 0.075) - 169.44
    }
    senao se (incomeTaxBase <= 3751.05){
      incomeTax = (incomeTaxBase * 0.15) - 381.44
    }
    senao se(incomeTax <= 4664.68){
      incomeTax = (incomeTaxBase * 0.225) - 662.77
    }
    senao {
      incomeTax = (incomeTaxBase * 0.275) - 896
    }

    escreva("----------------------------------------\n")
    escreva("Nome completo: " + employeeName + "\n")
    escreva("Número de dependentes: " + dependents + "\n")
    escreva("----------------------------------------\n")
    escreva("Salário: " + grossSalary + "\n")

    se (transport > transportDiscount){

      escreva("Vale transporte = " + transport + "\n")
    }
    escreva("----------------------------------------\n")
    escreva("Descontos \n")
    escreva("----------------------------------------\n")
    escreva("INSS: R$ " + socialSecurity + "\n")

    se(incomeTax > 0) {
      escreva("IRPF: R$ " + incomeTax + "\n")
    }

    se(transport > transportDiscount) {
      escreva("Vale Transporte: R$ " + transportDiscount + "\n")
    }

    escreva("----------------------------------------\n")
    escreva("Total de recebimentos: R$ " + (grossSalary + transport) + "\n")
    escreva("Total de descontos: R$ " + (socialSecurity + incomeTax + transportDiscount) + "\n")
    escreva("----------------------------------------\n")
    escreva("Total a receber: R$ " + ((grossSalary + transport)-(socialSecurity + incomeTax + transportDiscount)) + "\n")
    escreva("----------------------------------------\n")

    escreva("\n")
    escreva("\n")
    escreva("\n")
    escreva("Deseja continuar 'Sim' ou 'Não': ")
    leia(opcao)

    }
    
  }
}
