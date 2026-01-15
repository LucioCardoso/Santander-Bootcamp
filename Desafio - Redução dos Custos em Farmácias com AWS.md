# Relatório de Implementação de Serviços AWS

**Data:** 15 de Janeiro de 2026  
**Empresa:** Abstergo Industries  
**Responsável:** Lúcio Fernando Diniz Cardoso

## 

## 1\. Introdução

Este relatório apresenta a proposta de migração e implementação de serviços em nuvem da Amazon Web Services (AWS) para a Abstergo Industries. O objetivo do projeto foi elencar 3 serviços AWS, com a finalidade de redução dos custos operacionais, melhorar a eficiência logística como hub de distribuição farmacêutica; fazendo a transição de uma infraestrutura local (on-premises) para um modelo de nuvem escalável.

## 

## 2\. Descrição do Projeto

A Abstergo Industries atua como um hub de distribuição de medicamentos para outras farmácias. O projeto visa sustentar essa operação B2B garantindo que o inventário, as transações financeiras e o conteúdo digital (manuais e catálogos) sejam gerenciados com alta disponibilidade, segurança e, sobretudo, baixo custo através do modelo de pagamento por uso (pay-as-you-go).

## 

## 3\. Etapas

O projeto de implementação de ferramentas foi dividido em 3 etapas, cada uma com seus objetivos específicos. A seguir, serão descritas as etapas do projeto:

### 

### 3.1.Etapa 1: Amazon S3 (Simple Storage Service)

* **Foco da Ferramenta:** Armazenamento de objetos escalável e de baixo custo.
* **Descrição de Caso de Uso:** A Abstergo utilizará o S3 para hospedar todo o catálogo digital de medicamentos, manuais técnicos em PDF e imagens de alta resolução dos produtos.
* **Redução de Custos:** Ao utilizar a classe **S3 Intelligent-Tiering**, a empresa economiza automaticamente, pois o serviço move arquivos pouco acessados para camadas de preço inferior, eliminando o gasto com servidores físicos de armazenamento que exigiriam manutenção e energia.
* **Principal Ganho:** **Disponibilidade Global.** O hub garante que qualquer farmácia cliente possa acessar manuais e bulas via URL em milissegundos, com durabilidade de 99,999999999%.

### 

### 3.2.Etapa 2: Amazon DynamoDB

* **Foco da Ferramenta:** Banco de dados NoSQL de chave-valor, serverless e de alta performance.
* **Descrição de Caso de Uso:** Gestão do inventário em tempo real e carrinhos de compras das farmácias clientes. Como o estoque farmacêutico gira rápido, o DynamoDB lidará com milhares de atualizações de entrada e saída por segundo.
* **Redução de Custos:** Sendo **Serverless**, a Abstergo não paga por servidores ligados 24h, mas sim pela quantidade de leituras e gravações. Em períodos de baixa demanda (como madrugadas), o custo cai proporcionalmente ao uso.
* **Principal Ganho:** **Escalabilidade Infinita.** Em épocas de alta demanda (surtos sazonais de gripe, por exemplo), o banco de dados escala automaticamente para suportar o aumento de pedidos sem que o sistema fique lento ou caia.

### 

### 3.3.Etapa 3: Amazon RDS (Relational Database Service)

* **Foco da Ferramenta:** Banco de dados relacional (SQL) gerenciado.
* **Descrição de Caso de Uso:** Gerenciamento de transações financeiras, emissão de Notas Fiscais e contratos com fornecedores. Para dados que exigem relações complexas e integridade total (ACID), o RDS com motor PostgreSQL é o ideal.
* **Redução de Custos:** Redução drástica em custos de mão de obra técnica (DBAs), pois a AWS automatiza backups, patches de segurança e o **failover (Multi-AZ)**. A empresa não precisa investir em um segundo data center físico para desastres.
* **Principal Ganho:** **Confiabilidade e Conformidade.** Garante que todos os registros de vendas e impostos estejam seguros, auditáveis e com redundância geográfica automática.

## 

## 4\. Conclusão

A implementação destas 3 ferramentas (Amazon S3, Amazon DynamoDB e Amazon RDS) na empresa Abstergo Industries ajudará na redução drástica de custos operacionais (OPEX) e a eliminação de investimentos pesados em hardware (CAPEX), o que aumentará a eficiência e a produtividade da empresa. Isso ocorre porque eliminamos o investimento inicial em hardware caro (CAPEX) e passamos para um modelo de custo variável (OPEX), onde a empresa paga apenas pelo que consome enquanto escala sua operação de hub de distribuição de forma global e segura.



A transição para um modelo de pagamento por uso permite que a Abstergo cresça de forma sustentável como hub de distribuição.



Recomenda-se a continuidade da utilização das ferramentas implementadas e a busca por novas tecnologias que possam melhorar ainda mais os processos da empresa.

## 

## 5\. Anexos (referências AWS)

* [Amazon S3 Documentation](https://docs.aws.amazon.com/s3/)
* [Amazon DynamoDB Guide](https://docs.aws.amazon.com/dynamodb/)
* [Amazon RDS Features](https://aws.amazon.com/rds/features/)



**Responsável pelo Projeto:** Lúcio Fernando Diniz Cardoso

