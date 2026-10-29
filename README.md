# Projeto Base Vue.js

![Screenshot](./Screenshot.png)

## Descrição

Este repositório contém uma estrutura inicial para o desenvolvimento de aplicações web utilizando **Vue.js 3, TypeScript, Vite e Tailwind CSS**. O projeto serve como ponto de partida para novos projetos Front-End, oferecendo uma configuração básica para desenvolvimento, compilação e execução local.

A estrutura também inclui **Vuetify**, para utilização de componentes de interface, e **Vue Router**, para gerenciamento de rotas e navegação entre páginas.

## Tecnologias utilizadas

- **[Vue.js 3](https://vuejs.org/):** framework JavaScript para construção de interfaces reativas.
- **[TypeScript](https://www.typescriptlang.org/):** adiciona tipagem estática ao JavaScript, facilitando a manutenção e a identificação de erros.
- **[Vite](https://vite.dev/):** ferramenta de desenvolvimento e build que oferece inicialização rápida e atualização automática durante o desenvolvimento.
- **[Tailwind CSS](https://tailwindcss.com/):** framework CSS baseado em classes utilitárias para estilização das interfaces.
- **[Vuetify](https://vuetifyjs.com/):** biblioteca de componentes de interface para Vue.js, baseada no Material Design.
- **[Vue Router](https://router.vuejs.org/):** biblioteca para gerenciamento de rotas e navegação em aplicações Vue.js.
- **[Material Design Icons](https://pictogrammers.com/library/mdi/):** conjunto de ícones utilizado na interface.

## Pré-requisitos

Antes de executar o projeto, certifique-se de ter instalado:

- [Node.js](https://nodejs.org/) — versão compatível com as dependências do projeto.
- npm, instalado junto com o Node.js.

Para verificar as versões instaladas:

```bash
node --version
npm --version
```

## Instalação

Clone o repositório e acesse a pasta do projeto:

```bash
git clone <URL_DO_REPOSITORIO>
cd <NOME_DO_REPOSITORIO>
```

Instale as dependências:

```bash
npm ci
```

O comando utiliza o arquivo `package-lock.json` para instalar as versões registradas das dependências, garantindo maior reprodutibilidade entre diferentes ambientes. Por isso, mantenha esse arquivo versionado junto com o `package.json`.

## Executando o projeto

Para iniciar o servidor de desenvolvimento:

```bash
npm run dev
```

O Vite exibirá no terminal o endereço local para acessar a aplicação pelo navegador, geralmente `http://localhost:5173`.

Durante o desenvolvimento, as alterações nos arquivos são refletidas automaticamente no navegador.

## Compilação para produção

Para verificar os tipos TypeScript e gerar a versão de produção:

```bash
npm run build
```

Os arquivos compilados serão gerados no diretório `dist/`, prontos para serem publicados em um servidor ou serviço de hospedagem estática.

Para visualizar localmente a versão compilada:

```bash
npm run preview
```

## Estrutura do projeto

A estrutura pode variar conforme a evolução da aplicação, mas os principais arquivos e diretórios são:

```text
.
├── public/              # Arquivos estáticos públicos
├── src/
│   ├── assets/          # Imagens, estilos e outros recursos
│   ├── components/      # Componentes reutilizáveis
│   ├── router.ts        # Configuração das rotas
│   ├── App.vue          # Componente raiz da aplicação
│   └── main.ts          # Ponto de entrada da aplicação
├── index.html           # Documento HTML principal
├── package.json         # Dependências e scripts npm
├── package-lock.json    # Versões resolvidas das dependências
├── tsconfig.json        # Configuração principal do TypeScript
├── tsconfig.app.json    # Configuração TypeScript da aplicação
├── vite.config.ts       # Configuração do Vite
└── tailwind.config.js   # Configuração do Tailwind CSS, se utilizada
```

## Estilização e componentes

O projeto permite combinar Tailwind CSS e Vuetify conforme a necessidade de cada tela.

- Utilize as classes utilitárias do Tailwind CSS para definir espaçamentos, cores, dimensões, layouts e estilos diretamente nos templates.
- Utilize os componentes do Vuetify para implementar elementos de interface, como botões, campos de formulário, menus e diálogos.
- Utilize os ícones do Material Design Icons quando necessário.

A configuração existente do projeto deve ser mantida ao adicionar novas funcionalidades, especialmente os arquivos de configuração do Tailwind CSS, do Vite e do Vuetify.

## Navegação

As rotas da aplicação são centralizadas no arquivo `src/router.ts`, utilizando o Vue Router.

Para adicionar novas páginas, crie os componentes Vue correspondentes e registre as rotas conforme a configuração já existente no projeto.

## Dependências

As dependências da aplicação e as ferramentas de desenvolvimento são declaradas no `package.json`.

Ao adicionar ou remover pacotes, utilize o npm para atualizar os arquivos de dependências:

```bash
npm install <nome-do-pacote>
npm uninstall <nome-do-pacote>
```

Sempre versione as alterações no `package.json` e no `package-lock.json`. Dessa forma, outros desenvolvedores poderão instalar o mesmo conjunto de dependências utilizando `npm ci`.

## Objetivo do projeto

Este projeto foi criado para servir como uma base reutilizável para novas aplicações Front-End, reduzindo o tempo necessário para configurar ferramentas, dependências e estrutura inicial.

A partir dele, é possível implementar novas páginas, componentes, funcionalidades e integrações conforme os requisitos de cada aplicação.