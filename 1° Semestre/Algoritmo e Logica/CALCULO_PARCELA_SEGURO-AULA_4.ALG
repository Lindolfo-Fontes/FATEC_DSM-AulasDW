Algoritmo "CalculoEmprestimoSeguro"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   : Calcula o valor da Parcela do Emprestimo e do Seguro segundo a renda e a idade, ver slide aula 4
// Autor(a)    : Lindolfo Farias Fontes Neto
// Data atual  : 07/03/2025
Var
// Se��o de Declara��es das vari�veis 
renda : real
parcelamax_emp : real
idade : inteiro
parcela_seguro : real
valor_solicitado : real
num_parcelas : real

Inicio
// Titulo e Cabe�alho
escreval("PROGRAMA PARA C�LCULO DE EMPR�STIMOS E SEGURO")
escreval("")//pular uma linha

//solicita��o e leitura de dados
escreval("Qual valor gostaria de contratar?")
leia(valor_solicitado)
escreval("Qual a sua renda?")
leia(renda)
escreval("Qual a sua idade?")
leia(idade)


//resultado inicial
Se (idade<18) OU (renda<1500) Entao
escreval("N�o foi poss�vel realizar a contrata��o de seu empr�stimo")
senao
escreval("Empr�stimo aprovado! Veja abaixo os valores disponibilizados e o valor do seguro obrigat�rio")
fimse

//come�o dos calculos do emprestimo
se(renda>=1500) E (renda<2000) entao
parcelamax_emp <- renda*0.15
sen�o
   se(renda>=2000) E (renda<2500) entao
   parcelamax_emp <- renda*0.20
   sen�o
      se(renda>2500) entao
      parcelamax_emp <- renda*0.30
      fimse
   fimse
fimse
num_parcelas <- valor_solicitado / parcelamax_emp

//come�o dos calculos do seguro
se(idade>=18) E (idade<=29) Entao
parcela_seguro <- parcelamax_emp*0.05
sen�o
   se(idade>=30) E (idade<=44) entao
   parcela_seguro <- parcelamax_emp*0.07
   sen�o
       se(idade>=45) E (idade<=60) entao
       parcela_seguro <- parcelamax_emp*0.10
       sen�o
          se(idade>60) entao
          parcela_seguro <- parcelamax_emp*0.15
          fimse
       fimse
   fimse
fimse

//apresenta��o dos resultados
se(idade>=18) E (renda>=1500) entao
escreval("Valor total contratado = ",valor_solicitado)
escreval("N�mero de Parcelas = ",num_parcelas)
escreval("Valor das Parcelas = ",parcelamax_emp)
escreval("Valor do Seguro Mensal = ",parcela_seguro)
sen�o
escreval("")
fimse
       
Fimalgoritmo