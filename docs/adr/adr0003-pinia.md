# Architecture Decision Record (ADR) 0003: Uso do Pinia para Gerenciamento de Estado

## **Data**
2025-02-17

## **Contexto**
O front-end do **SouUFPR** é desenvolvido em **Vue.js 3** e utiliza **TypeScript** para garantir **tipagem estática, melhor manutenção e segurança de tipos**.  
Dado o uso de TypeScript, o projeto precisa de um gerenciador de estado que:
- **Seja totalmente compatível com TypeScript**, permitindo inferência automática de tipos.
- **Simplifique a estrutura do código**, evitando mutações e excesso de boilerplate.
- **Ofereça um modelo escalável**, suportando tanto **estado global** quanto **stores modulares**.

As principais alternativas avaliadas foram **Pinia, Vuex 4, Context API do Vue e Store Local**, resultando na escolha do **Pinia**.

## **Decisão**
O projeto **SouUFPR** adotará o **Pinia** como solução oficial para gerenciamento de estado no front-end.

## **Motivos para a Escolha**
- **Totalmente compatível com TypeScript**: O Pinia permite **tipagem automática** sem necessidade de definições extras, enquanto Vuex exige configuração manual de tipos.
- **API mais limpa e moderna**: Baseado na **Composition API**, elimina mutações desnecessárias e reduz código boilerplate.
- **Melhor escalabilidade**: Facilita a criação de **stores modulares**, essencial para futuras expansões do SouUFPR.
- **Integração com Vue DevTools**: Permite rastrear mudanças no estado e depurar aplicações com mais eficiência.
- **Suporte oficial do Vue.js**: O Vue 3 recomenda o Pinia como gerenciador de estado padrão.

## **Alternativas Consideradas**

### **1. Vuex 4**
- **Vantagens**:
  - Framework já consolidado na comunidade Vue.js.
  - Boas práticas para gerenciamento de estado.
- **Desvantagens**:
  - **Tipagem manual complexa** no TypeScript, exigindo muitos tipos auxiliares.
  - **Mais verboso** devido ao uso obrigatório de **mutations**.
  - **Perde relevância** no Vue 3, já que o próprio Vue sugere o Pinia como alternativa.

### **2. Context API do Vue (Sem Store Externa)**
- **Vantagens**:
  - Simples de implementar para pequenos estados.
  - Usa apenas **ref() e reactive()**, sem dependências extras.
- **Desvantagens**:
  - Dificulta o compartilhamento de estado entre múltiplos componentes.
  - Sem suporte nativo para debugging no Vue DevTools.
  - **Sem benefícios de tipagem automática no TypeScript**.

### **3. Store Local em Sessão/LocalStorage**
- **Vantagens**:
  - Persistência automática de dados entre sessões.
- **Desvantagens**:
  - **Não otimiza a reatividade do Vue.js**.
  - Exige mais código para **sincronização dinâmica** entre componentes.

## **Consequências**

### **Positivas**
- **Melhor experiência com TypeScript**: A tipagem automática reduz a necessidade de definições manuais e evita erros de tempo de execução.
- **Menos boilerplate**: Código mais enxuto, eliminando **mutations** desnecessárias.
- **Melhor performance**: O Pinia usa **proxies nativos do Vue 3**, tornando o acesso ao estado mais rápido.
- **Facilidade de depuração**: Suporte nativo ao **Vue DevTools**, permitindo rastreamento do estado em tempo real.
- **Escalabilidade**: Permite **stores modulares** e configuração de **persistência de estado** via plugins.

### **Negativas**
- **Menos suporte legado**: Projetos Vue 2 podem ter dificuldades na migração. *(Não aplicável ao SouUFPR, pois usamos Vue 3.)*
- **Aprendizado inicial**: Algumas equipes acostumadas ao Vuex precisarão de adaptação ao novo modelo. *(Mitigável com documentação e exemplos práticos.)*

## **Status**
**Aceito**

## **Referências**
- [Documentação Oficial do Pinia](https://pinia.vuejs.org/)
- [Pinia vs Vuex – Qual escolher para Vue 3?](https://vuejs.org/guide/scaling-up/state-management.html)

- [Documentação Arquitetural](../DA.md)
