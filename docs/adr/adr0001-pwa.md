# ADR 0001: Uso de PWA

## Data
2025-02-17

## Contexto
O projeto **SouUFPR** tem como objetivo desenvolver uma **prova de conceito (PoC)** para avaliação da experiência dos discentes com um aplicativo de acesso a serviços acadêmicos da UFPR. O desenvolvimento inicial servirá como um **beta**, possibilitando ajustes com base no feedback dos usuários antes da evolução para uma versão mais robusta.

A escolha da abordagem tecnológica considerou fatores como **tempo de desenvolvimento** e **curva de aprendizagem**, priorizando a agilidade na entrega da solução inicial:

- **Tempo de Desenvolvimento Reduzido**: O **PWA** permite criar uma única aplicação acessível em múltiplos dispositivos, eliminando a necessidade de versões específicas para Android e iOS.
- **Validação com Usuários**: Como se trata de uma **PoC**, o objetivo é testar hipóteses e obter feedback antes de decidir sobre a adoção de uma solução nativa ou híbrida.
- **Menor Complexidade de Manutenção**: A base de código unificada facilita a evolução incremental da aplicação.

Dessa forma, a opção por **PWA** permite validar rapidamente requisitos e experiência dos usuários, servindo de base para um futuro desenvolvimento mais completo.

## Decisão
Adotar um **Progressive Web App (PWA)** para o **SouUFPR**, garantindo **rápida implementação**, **baixo esforço de aprendizado** e **facilidade na iteração com os usuários**.

## Alternativas Consideradas

### 1. **Aplicativo Nativo**
- **Vantagens**:
  - Melhor desempenho e experiência integrada ao sistema operacional.
  - Acesso completo a recursos nativos.
- **Desvantagens**:
  - **Tempo de desenvolvimento maior**, inadequado para uma **PoC**.
  - **Curva de aprendizagem maior**, exigindo conhecimento específico para cada plataforma.
  - Dificuldade de iteração rápida com usuários devido ao processo de publicação em lojas.

### 2. **React Native**
- **Vantagens**:
  - Desenvolvimento unificado para múltiplas plataformas.
  - Melhor acesso a APIs nativas em comparação ao PWA.
- **Desvantagens**:
  - **Curva de aprendizagem maior**, exigindo adaptação ao ecossistema React Native.
  - **Tempo de desenvolvimento moderado**, ainda maior do que um PWA para entrega inicial.
  - Requer mais estruturação inicial, tornando menos viável para uma **PoC**.

### 3. **Flutter**
- **Vantagens**:
  - Alto desempenho e interface rica.
  - Código único para múltiplas plataformas.
- **Desvantagens**:
  - **Curva de aprendizagem maior**, devido ao uso da linguagem **Dart**.
  - **Tempo de desenvolvimento maior**, pois a equipe precisaria se familiarizar com novas ferramentas e padrões.
  - Maior esforço para realizar mudanças rápidas na **PoC**.

## Consequências

### **Positivas**
- **Entrega rápida** da aplicação para teste com os discentes.
- **Menor tempo de aprendizado**, aproveitando as tecnologias já utilizadas pela equipe.
- **Fácil iteração** com usuários, sem necessidade de submissão a lojas de aplicativos.
- **Código unificado**, facilitando a evolução da aplicação conforme o feedback.

### **Negativas**
- **Acesso limitado a APIs nativas**, dependendo do suporte do navegador.
- **Desempenho inferior** ao de aplicativos nativos para tarefas intensivas.

## Status
**Aceito**

## **Referências**
- [Documentação Arquitetural](../DA.md)
