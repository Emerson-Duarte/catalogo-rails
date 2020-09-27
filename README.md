##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.6.6](https://github.com/Emerson-Duarte/catalogo-rails/blob/master/Gemfile#L4)
- Rails [6.0.3](https://github.com/Emerson-Duarte/catalogo-rails/blob/master/Gemfile#L7)

##### 1. Check out the repository

```bash
git clone https://github.com/Emerson-Duarte/catalogo-rails
```

##### 2. Create database.yml file

Copy the sample database.yml file and edit the database configuration as required.

```bash
cp config/database.yml.sample config/database.yml
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000

#### 5. Issues

* Quando se vai editar um livro o separador fica definido como "." e não com "," como deveria ser.

* Quando se vai deletar um gênero que está relacionado a um livro cadastrado, falta o tratamento do erro para não estourar o erro em tela, (uso do before_destroy) 
