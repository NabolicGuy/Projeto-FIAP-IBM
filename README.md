# 📊 Churn — FIAP + IBM Challenge (Grupo AxisTech)

> Construímos um **MVP de predição de churn** para apoiar times de negócio (Marketing/CRM/CS) na **retenção de clientes**, unindo **governança de dados, Big Data, modelagem supervisionada** e **BI**.

## 🔗 Dashboard (versão final)
Acesse o painel publicado no Power BI:  
**https://app.powerbi.com/view?r=eyJrIjoiMTYzNjY0ZjctYThjOS00NzJmLWJkM2UtZTNmZjQyMDcyYzJhIiwidCI6IjExZGJiZmUyLTg5YjgtNDU0OS1iZTEwLWNlYzM2NGU1OTU1MSIsImMiOjR9**

---

## 👥 Quem somos
Trabalhamos como **time Scrum** com papéis definidos (PO, SM e Devs/Analistas) e conduzimos o projeto como **desenvolvimento de MVP** voltado à **Inteligência Preditiva para Retenção**. Durante o planejamento, **mudamos o escopo** para *churn* visando maior aplicabilidade e viabilidade técnica dentro do prazo do challenge. O trabalho foi organizado em **sprints**, com gestão no **Trello**, reuniões curtas e acompanhamento contínuo. 

---

## 🧭 O que entregamos
- Um **fluxo de dados de ponta a ponta**: da **ingestão e tratamento** até **armazenamento relacional** e **visualização executiva**.
- Um **modelo supervisionado** para **classificar risco de churn** (alto/médio/baixo), priorizando clareza e valor de negócio.
- Um **dashboard** com **indicadores-chave** e **segmentação de risco** para apoiar decisões de retenção.
- **Documentação** das sprints, decisões e artefatos técnicos que sustentam o MVP.

---

## 🧱 Como fizemos (visão técnica, sem passo-a-passo)

### 1) Arquitetura de dados & Big Data
Organizamos os dados em um pipeline **HDFS → Apache Pig (ETL) → Sqoop → MySQL**.  
- Preparamos e tratamos os dados no **Hadoop** (ETL em Pig) para gerar bases analíticas limpas e consistentes.  
- **Exportamos com Sqoop** para um **banco relacional (MySQL)**, onde validamos a consistência via consultas.  
Esse desenho nos permitiu separar camadas (ingestão, tratamento e consumo), deixando o dado pronto para **modelagem** e **BI**.

### 2) Banco relacional (Oracle 21c em VM) & DDL/DML
Disponibilizamos também a visão **relacional** no **Oracle 21c**, em ambiente provisionado em **máquina virtual**, com acesso via **SQLPlus**.  
- Criamos a tabela de vendas (**T_MARKET_SALES**) com **tipos adequados** e **regras de integridade** (PK e *checks* de valores positivos), registrando as **evidências de importação** e os **scripts DDL/DML** que povoam a tabela para testes e análises.  
- Essa visão relacional ajudou a validar esquemas, chaves e formatos antes da camada analítica/BI.

### 3) Modelagem (aprendizado supervisionado) e análise
Para o MVP, aplicamos uma **abordagem supervisionada** de classificação de **churn** com foco em interpretabilidade e entrega de valor. Trabalhamos com **métricas de avaliação** (ex.: *accuracy*, *recall*, *F1*) compatíveis com o objetivo de **priorizar clientes em risco**.  
> Observação: durante o ciclo de sprints, também avaliamos alternativas (ex.: **KNN/árvore de decisão**), alinhando a escolha às restrições de dados, tempo e clareza de explicação para a audiência executiva.

### 4) Suporte em Python (CSV e conferências)
Produzimos artefatos auxiliares em **Python** para **geração/validação de CSV**, conferindo estrutura de campos, formatação e consistência mínima de entradas, o que agilizou a prototipação e a inspeção de dados.

### 5) Business Intelligence (Power BI)
Consolidamos o resultado em um **dashboard executivo** publicado (link acima), com:  
- **Indicadores de desempenho** do modelo/negócio;  
- **Segmentação de risco de churn** (alto/médio/baixo) para priorização de campanhas;  
- Visualizações objetivas para **tomada de decisão**.

---

## 🧑‍💼 Governança, método e qualidade
- **Gestão ágil por sprints** com *checklists*, entregáveis por disciplina e feedbacks incorporados.  
- **Requisitos não funcionais** considerados (usabilidade do dashboard, portabilidade local, organização do código, ausência de dados sensíveis).  
- **Riscos/contingências** mapeados (ex.: reavaliação de dados/hiperparâmetros caso a acurácia mínima não fosse atingida).

---

## 📌 Escopo em uma frase
**Antecipar cancelamentos para direcionar ações de retenção**, combinando boa **engenharia de dados**, **modelo supervisionado** objetivo e **dashboard** claro para o negócio.

---

## 📎 Artefatos principais deste repositório (referência)
- **Scripts SQL** (DDL/DML) da tabela **T_MARKET_SALES**.  
- **Evidências** de importação/ETL/integração.  
- **Notas de arquitetura** (VM/Oracle/SQLPlus).  
- **Assets de Power BI** (quando aplicável) e **documentação das sprints**.

---

## ✅ Status atual
O **MVP** está **publicado no Power BI** e pronto para apresentação, com documentação das etapas, decisões e evidências técnicas que sustentam o resultado.
