# Ruby on Rails - Curso Completo - Módulo 3

Seguindo o projeto do curso de Ruby On Rails Completo da Udemy do professor Jackson Pires.
Aqui ficará o código fonte do aplicativo "Escambo APP" desenvolvido no módulo 3.

Deseja adquirir o curso? Acesse o link abaixo e saiba como.


## Dependências do projeto
* Rails 5.1.4

* ImageMagick (https://www.imagemagick.org)
```
sudo apt-get update
sudo apt-get install imagemagick libmagickwand-dev
```

* Graphviz (https://www.graphviz.org) - Apenas para Ambiente de Desenvolvimento
```
sudo apt-get update
sudo apt-get install graphviz
```

* Capistrano - Apenas para ambiente de desenvolvimento

## Pacotes essenciais
```
sudo apt-get install -y build-essential
autoconf automake bison libssl-dev
libyaml-dev libreadline6 libreadline6-dev
zlib1g zlib1g-dev libncurses5-dev ncurses-dev
libffi-dev libgdbm-dev openssl libc6-dev
libsqlite3-dev libtool libxml2-dev
libxslt-dev libxslt1-dev sqlite3 curl vim git
```

## NGINX
* Comandos básicos
```
sudo systemctl stop nginx
sudo systemctl start nginx
sudo systemctl restart nginx
sudo systemctl disable nginx
sudo systemctl enable nginx
```
## Mysql
Está usando a versão 14.14 Distrib 5.7.20, for Linux (x86_64)

## Unicorn - [GEM](https://bogomips.org/unicorn/)
* Gemfile
```
group :production do
  gem "unicorn"
end

group :development do
  gem "capistrano3-unicorn"
end
```
* Comandos Básicos
```
bundle install
bundle exec cap -T
```
* Capfile
```
require 'capistrano3/unicorn'
```

* config/deploy.rb
```
after 'deploy:publishing', 'deploy:restart'

namespace :deploy do
  task :restart do
    invoke 'unicorn:stop'
    invoke 'unicorn:start'
  end
end
```

## Considerações finais
>> [Ruby on Rails - Curso Completo](http://jacksonpires.blogspot.com.br/2016/05/novo-curso-de-rails-na-udemy.html)
