# Avaliação MBA on Rails

Aluno: Fábio Henrique de Carvalho Freitas<br>
Email: fhcfreitas@gmail.com

# Games Wishlist App

Este é um projeto desenvolvido como parte do curso de Ruby on Rails. O objetivo é aplicar os conceitos aprendidos em aula para criar uma aplicação web funcional, bem estruturada e com boas práticas de desenvolvimento.

## 📦 Tecnologias Utilizadas

- [Ruby](https://www.ruby-lang.org/pt/) 3.2.x
- [Ruby on Rails](https://rubyonrails.org/) 8.x
- [PostgreSQL](https://www.postgresql.org/)

## 🚀 Como rodar o projeto localmente

```bash
# Clone o repositório
git clone https://github.com/fhcfreitas/games-wishlist-app.git
cd games-wishlist-app

# abra o VSCode
# Inicie o projeto dentro do dev container
```

## ✅ Funcionalidades implementadas

Descreva aqui as principais funcionalidades da sua aplicação. Por exemplo:

- CRUD de Games, Users e Wishlist
- Interfaces separadas para usuários públicos e administradores
- Cadastro de Jogos em Wishlists

## 🧠 Conceitos aplicados

Abaixo estão os conceitos aprendidos em aula e aplicados neste projeto, junto com a justificativa de sua utilização:

### 1. **Perfomance e Escalabilidade**

Uso de índices específicos em wishlist_items (wishlist_id, game_id, e composto único), e includes(:wishlists) em set_user para evitar N+1 queries e desperdício de memória.

### 2. **Repository Pattern**
Apliquei o Repository Pattern para abstrair queries do modelo Games, centralizando a lógica de acesso a dados

### 3. **Namespaces**
Utilizado para separar interfaces e limitar ações de usuários públicos.

### 4. **Concern**
Utilizei o concern SoftDeletable para implementar soft delete no modelo Games, substituindo exclusão por marcação de status, facilitando a reutilização e manutenção do código e preservando o banco de dados.

### 5. **Query Object**
Extraí a lógica de consulta para jogos ativos em uma Query Object dedicada, removendo responsabilidades do controller e facilitando a manutenção de filtros.

----------------------------------------

