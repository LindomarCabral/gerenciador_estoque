# 📦 Sistema de Controle de Estoque e Vendas em Ruby (CLI)

Projeto desenvolvido como **evolução prática** do conteúdo de **Fundamentos em Ruby** do curso **Formação Ruby on Rails Developer** da [DIO](https://www.dio.me/).

O sistema foi inicialmente baseado no projeto apresentado pelo Expert e **ampliado com novas funcionalidades**, visando demonstrar domínio dos conceitos fundamentais da linguagem Ruby, organização de código e lógica de negócio.

---

## 🎯 Objetivo do Projeto

Criar uma aplicação **em Ruby (linha de comando)** capaz de:

* Gerenciar produtos em estoque
* Cadastrar clientes
* Realizar vendas vinculando clientes e produtos
* Atualizar automaticamente o estoque
* Gerar relatório detalhado de vendas

Tudo isso utilizando apenas **Ruby puro**, explorando estruturas básicas da linguagem.

---

## 🧠 Conceitos de Ruby Utilizados

* Métodos e modularização
* Arrays e Hashes
* Estruturas de decisão (`case`, `if`, `unless`)
* Laços (`loop`, `times`)
* Entrada e saída de dados (`gets`, `puts`)
* Manipulação de datas (`Time`)
* Organização de arquivos com `require_relative`
* Boas práticas de legibilidade e separação de responsabilidades

---

## 🗂️ Estrutura do Projeto

```text
project/
├── init.rb
├── display/
│   ├── menu.rb
│   └── operacoes_de_tela.rb
├── core/
│   ├── cadastrar_produto.rb
│   ├── listar_produtos.rb
│   ├── retirar_estoque.rb
│   ├── cadastrar_cliente.rb
│   ├── listar_clientes.rb
│   ├── realizar_venda.rb
│   └── relatorio_vendas.rb
```

---

## ⚙️ Funcionalidades Implementadas

### 📦 Produtos

* Cadastro de produtos
* Listagem de produtos em tabela
* Retirada de produtos do estoque

### 👤 Clientes (✨ **Melhoria Implementada**)

* Cadastro de clientes
* Listagem de clientes

### 🛒 Vendas (✨ **Melhoria Implementada**)

* Seleção de cliente antes da venda
* Inclusão de múltiplos produtos em uma venda
* Validação de estoque
* Baixa automática da quantidade vendida

### 📊 Relatório de Vendas (✨ **Melhoria Implementada**)

* Relatório detalhado por venda
* Informações exibidas:

  * Cliente
  * Data da venda
  * Produtos vendidos
  * Quantidade
  * Subtotal
  * Total da venda

---

## 📈 Melhorias Realizadas em Relação ao Projeto Original

✔ Inclusão de **cadastro de clientes**
✔ Vínculo direto entre **cliente e venda**
✔ Controle de vendas com múltiplos itens
✔ Atualização automática do estoque
✔ Geração de **relatório de vendas**
✔ Organização do projeto em módulos (core / display)
✔ Interface em terminal com cores e tabelas

Essas melhorias transformam o projeto inicial em um **mini sistema de vendas**, aproximando-o de um cenário real de mercado.

---

## ▶️ Como Executar o Projeto

### Pré-requisitos

* Ruby instalado (versão 2.7+ recomendada)
* Gem `terminal-table`

### Instalação da dependência

```bash
gem install terminal-table
```

### Executar a aplicação

```bash
ruby init.rb
```

---

## 🧪 Exemplo de Uso

1. Cadastre produtos
2. Cadastre clientes
3. Realize uma venda escolhendo o cliente
4. Selecione os produtos e quantidades
5. Consulte o relatório de vendas

---

## 📚 Referência do Curso

Projeto inspirado no repositório oficial da DIO:

🔗 [https://github.com/digitalinnovationone/curso-ruby](https://github.com/digitalinnovationone/curso-ruby)

Conforme orientado no desafio, o projeto foi **recriado e evoluído**, mantendo os conceitos ensinados pelo Expert e adicionando melhorias próprias.

---

## 🚀 Próximas Evoluções (Ideias Futuras)

* Persistência de dados em JSON
* Exportação de relatório em PDF
* Filtro de vendas por cliente ou período
* Sistema de login
* Migração para Rails futuramente

---

## 👨‍💻 Autor

Projeto desenvolvido por **Lindomar dos Santos Cabral**
Curso: *Formação Ruby on Rails Developer – DIO*

---

⭐ Se este projeto te ajudou ou te inspirou, deixe uma estrela no repositório!
