# ADR 0002: Uso de Vue.js

## Data
2025-02-17

## Contexto
Para o **front-end**, foi necessário definir um framework adequado, considerando critérios como **curva de aprendizado**, **tempo de desenvolvimento** e **padronização tecnológica dentro da AGTIC**.

A escolha do **Vue.js** foi realizada de forma coletiva pela equipe da **AGTIC**, levando em conta os seguintes fatores:

- **Know-how existente**: A **AGTIC** já possui experiência consolidada com **Vue.js**, o que reduz a necessidade de treinamento da equipe.
- **Agilidade no desenvolvimento**: O Vue.js permite uma implementação rápida e eficiente, sendo adequado para uma **PoC** que exige entregas ágeis e iterativas.
- **Curva de aprendizado suave**: Comparado a frameworks como React e Angular, o Vue.js é mais intuitivo para novos desenvolvedores, facilitando a adesão e colaboração entre equipes.
- **Flexibilidade e integração**: Vue.js possui uma abordagem progressiva, facilitando a integração com outras tecnologias já utilizadas pela AGTIC.
- **Facilidade de manutenção**: A estrutura modular do Vue.js simplifica a evolução do código e a manutenção contínua do projeto.

Dado esse cenário, o **Vue.js** foi escolhido como framework principal para o desenvolvimento da interface do **SouUFPR**.

## Decisão
Utilizar **Vue.js** como framework de front-end para o **SouUFPR**, aproveitando a expertise da equipe e garantindo um desenvolvimento ágil e sustentável.

## Alternativas Consideradas

### 1. **React**
- **Vantagens**:
  - Grande adoção no mercado e suporte da comunidade.
  - Flexibilidade para desenvolvimento de aplicações escaláveis.
- **Desvantagens**:
  - **Curva de aprendizado maior**, exigindo conhecimento sobre JSX e conceitos como hooks.
  - **Maior complexidade inicial**, o que impactaria a agilidade da PoC.
  - A **AGTIC não tem expertise consolidada em React**, o que exigiria maior tempo de adaptação da equipe.

### 2. **Angular**
- **Vantagens**:
  - Arquitetura robusta e baseada em padrões sólidos.
  - Ferramentas integradas para aplicações complexas.
- **Desvantagens**:
  - **Curva de aprendizado mais íngreme**, exigindo maior esforço de treinamento.
  - **Desenvolvimento mais burocrático**, o que impactaria a rapidez de iteração da PoC.
  - A **AGTIC não possui know-how consolidado em Angular**, tornando a adoção inviável no curto prazo.

## Consequências

### **Positivas**
- **Menor tempo de desenvolvimento**, aproveitando o conhecimento prévio da equipe.
- **Facilidade de manutenção e evolução**, devido à modularidade e simplicidade do Vue.js.
- **Redução da curva de aprendizado**, permitindo que novos desenvolvedores da equipe contribuam rapidamente.
- **Padronização com outras aplicações da AGTIC**, garantindo maior coesão no ecossistema tecnológico.

### **Negativas**
- **Menor adoção no mercado** em comparação com React, o que pode impactar a contratação de novos desenvolvedores no futuro.
- **Menos suporte nativo para aplicações muito grandes**, embora mitigável com boas práticas de arquitetura.

## Status
**Aceito**

## **Referências**
- [Documentação Arquitetural](../DA.md)
