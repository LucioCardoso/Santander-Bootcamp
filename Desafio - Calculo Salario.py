"""
Desafio

Faça um programa que calcule e imprima o salário a ser transferido para um funcionário.
Para realizar o cálculo, receba o valor bruto do salário e o adicional de benefícios.
O Salário a ser transferido é calculado da seguinte maneira:

(valor bruto do salário - percentual de imposto mediante ao salário) + adicional de benefícios

Para calcular o percentual de imposto, segue as alíquotas abaixo:
- De R$ 0.00 a R$ 1100.01.100,00 (inclusive): 5% de imposto
- De R$ 1100.01 a R$ 2500.00 (inclusive): 10% de imposto
- Acima de R$ 2500.00: 15% de imposto

Entrada

A entrada consiste em vários arquivos de teste, que conterá o valor bruto do salário e adicional
dos benefícios.

Saída

Para cada arquivo da entrada, terá um arquivo de saída. E como mencionado no Desafio, será gerado uma
linha com um número que será a diferença entre o valor bruto do salário e o percentual de imposto mediante
a faixa salarial somado com o adicional de benefícios. Use o exemplo abaixo para clarear o que está sendo pedido.

Exemplo

Entradas = 2.000.00 e 250, Saída = 2050.00

Para ler e escrever os dados em Python, utilizamos as seguintes funções:
- input(): Lê uma linha com dado(s) de Entrada (Inputs) do usuário;
- print(): Imprime um texto de Saída (Output) e pula uma linha.

"""
# Função para calcular o imposto (baseado nas alíquotas fornecidas)
def calcular_imposto(salario):
    aliquota = 0.00
    if (salario >= 0.0 and salario <= 1100.0):
        aliquota = 0.05
    elif (salario > 1100.0 and salario <= 2500.0):
        aliquota = 0.10
    else:
        aliquota = 0.15
    return salario * aliquota

# Leitura dos valores de Entrada
valor_salario = float(input("Digite o valor do Salário Bruto : "))
valor_beneficios = float(input("Digite o valor dos Benefícios : "))

# Cálculo do imposto
valor_imposto = calcular_imposto(valor_salario)

# Cálculo do salário a ser transferido
salario_transferido = (valor_salario - valor_imposto) + valor_beneficios

# Impressão do salário a ser transferido
print(f"Salário Líquido a ser transferido : R$ {salario_transferido:.2f}")