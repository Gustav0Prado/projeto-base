# **Documento de Arquitetura (DA) - SouUFPR WEB**

## **Histórico de Revisões**
| **Data**       | **Versão** | **Autor**         | **Alterações**              |
|------------|--------|---------------|-------------------------|
| 2025-02-17 | 1.0    | Jaison P. Rezine (AGTIC) | Documento inicial          |
| 2025-02-XX | 1.1    | XXX (C3_SL) | XXX          |

## **Objetivo**
Este documento define a arquitetura do **front-end do SouUFPR**, garantindo que a implementação siga boas práticas, padrões arquiteturais modernos e esteja alinhada com os requisitos estratégicos do projeto.  
O SouUFPR será desenvolvido como um **PWA** para oferecer acesso rápido e eficiente a informações acadêmicas, com o objetivo de validar a experiência dos discentes antes da evolução para um MVP ou versão final.  


## **Descrição Geral**
<C3> 
Explicar a função do front-end no projeto e sua importância na experiência do usuário. 

EXEMPLO:
O front-end do SouUFPR será responsável por fornecer uma interface responsiva e acessível para os alunos da UFPR, permitindo acesso rápido às funcionalidades essenciais, como carteirinha digital, horários do RU e intercampi. A aplicação será desenvolvida como um PWA, garantindo melhor compatibilidade entre dispositivos e suporte a acesso offline.
</C3>



## **Arquitetura**

A arquitetura do **front-end** segue uma abordagem **componentizada e modular**, garantindo **baixo acoplamento e alta coesão**.  

### **Camadas**
- **UI Layer**: Componentes Vue.js responsáveis pela interface.
- **Service Layer**: Comunicação com a API REST e manipulação de dados.
- **State Management**: Gerenciado via **Pinia** para controle global do estado.

### **Modelo de Comunicação**
- O front-end consome os dados da **SouUFPR API** via **REST (JSON)**.
- Utiliza **axios** para requisições assíncronas.
- Integração com **OAuth2 Keycloak** para autenticação.


## **Fluxo de Dados e Comunicação**
<C3> 
Criar um diagrama C4 (Container) representando a interação entre front-end, API e Keycloak.

SUGESTÃO
- O diagrama deve mostrar o front-end chamando a API REST e recebendo respostas via JSON.
- Explicar como a autenticação OAuth2 será feita no front-end. 
</C3>


## **Tecnologia e Infraestrutura**

### **Tecnologias Utilizadas**
| **Componente**      | **Tecnologia** |
|-----------------|----------------|
| **Linguagem**       | TypeScript |
| **Framework**       | Vue.js 3 |
| **Gerenciamento de Estado** | Pinia |
| **Roteamento**      | Vue Router |
| **Estilização**     | Tailwind CSS |
| **Testes**          | Jest + Vue Test Utils |
| **PWA**            | Workbox |


## **Autenticação e Segurança**

- **Autenticação via OAuth2 + Keycloak**, utilizando **JWT Tokens**.  
- **Proteção contra ataques XSS e CSRF**.  
- **Rate Limiting** para evitar abusos.  


## **Escalabilidade e Desempenho**

- **Lazy Loading** e **Code Splitting** para otimizar a carga inicial.  
- **Caching com Service Workers** para funcionamento offline.  
- **Tempo de resposta esperado: ≤ 200ms para 90% das requisições**.  

## **Implantação e CI/CD**

### **Pipeline GitLab CI/CD**
1. **Build** (Vite)
2. **Testes Unitários** (Jest)
3. **Análise de Qualidade** (SonarQube)
4. **Deploy** (Nginx)

- **Merge Requests obrigatórios para todas as alterações**.  


## **Monitoramento e Logs**

- **Elasticsearch** Armazenamento e indexação dos logs
- **Logstash** Processamento e roteamento dos logs
- **Kibana** Análise, dashboards e alertas de logs



## **Padrões e Boas Práticas**
<C3> Definir padrões de desenvolvimento e organização de código, como Atomic Design, Composition API, etc. </C3>

## **Visão de Componentes**
<C3> 
Descrever os principais componentes Vue.js utilizados no projeto. 

EXEMPLO:

Componente           Descrição
Carteirinha.vue	   Exibe a carteirinha do aluno com foto.
Intercampi.vue	      Lista os horários do transporte intercampi.
MenuPrincipal.vue	   Contém a navegação principal do aplicativo.
AuthService.ts	      Gerencia a autenticação com OAuth2 e Keycloak.

</C3>


## **Métricas de Qualidade**
| **Métrica**               | **Ferramenta**    | **Valor Atual** | **Limite Aceitável** |
|-----------------------|---------------|-------------|-------------------|
| **Cobertura de Testes** | *Jest*        | [Valor]     | >= 80%            |
| **Complexidade Ciclômica** | *SonarQube*    | [Valor]     | <= 10             |
| **Duplicação de Código (%)** | *SonarQube*    | [Valor]     | <= 5%             |
| **Manutenção de Código**     | *SonarQube*    | [Valor]        | >= B (A-F)          |


## **Decisões Arquiteturais (ADRs)**
Este subprojeto segue as decisões arquiteturais descritas nos ADRs:

- [ADR 0001: PWA](adr/adr0001-pwa.md)
- [ADR 0002: Vue.js](adr/adr0002-vue.md)
- [ADR 0003: Gerenciamento de Estado com Pinia](adr/adr0003-pinia.md)

## **Anexos**

[Ver DA Geral](https://gitlab.ufpr.br/sistemas-csgd/sou-ufpr/sou-ufpr-doc/-/blob/main/docs/DA.md)

Este documento será revisado regularmente para garantir que a arquitetura se mantenha alinhada com as necessidades do projeto.
