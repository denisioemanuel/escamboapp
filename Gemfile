source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'


## GEMs adicionadas durente o curso ##
#Gem de insternacionalização.
gem 'rails-i18n'

#Manage Procfile-based applications
gem 'foreman'
#Cuida da autenticação do site
gem 'devise'
#Translations for the devise gem
gem 'devise-i18n'
##Laytou da nossa aplicação BackOffice
gem 'bootstrap_sb_admin_base_v2'

gem 'rails-assets-sweetalert2', '~> 5.1.1', source: 'https://rails-assets.org'
gem 'sweet-alert2-rails'
#Help ActiveRecord::Enum feature to work fine with I18n and simple_form.
gem 'enum_help'
#Minimal authorization through OO design and pure Ruby classes
gem 'pundit'
#Integration of RubyMoney - Money with Rails
gem 'money-rails'
#Easy file attachment management for ActiveRecord
gem 'paperclip', '~> 5.0.0'
#jQuery UI for the Rails asset pipeline
gem 'jquery-ui-rails'
#jquery antigo , mas não é mais necessário pois no rails 5 o jquery é inbutido
#gem 'jquery-rails'
gem 'redcarpet'
#Markdown Lorem Ipsum generator
gem 'doctor_ipsum'
#FriendlyId is the “Swiss Army bulldozer” of slugging and permalink plugins for ActiveRecord.
gem 'friendly_id'
#ADD: A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
#ADD: i18n for kaminari
gem 'kaminari-i18n'


#Source do assets
source 'https://rails-assets.org' do
  #Bootstrap
  gem 'rails-assets-bootstrap', '3.3.7'
  #Notify bootstrap-growl
  gem 'rails-assets-bootstrap.growl'
  #Animated for bootstrap-growl
  gem 'rails-assets-animate-css'
  #Wrappers for JavaScript alert(), confirm() and other flexible dialogs using Twitter's bootstrap framework
  gem 'rails-assets-bootbox'
  #The safe Markdown parser, reloaded.
  gem 'rails-assets-jquery-ujs'
  #bootstrap-markdown
  gem 'rails-assets-bootstrap-markdown'
  #marked
  gem 'rails-assets-marked'

end

# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
#gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  #Gem dixa a mensagem de erro mais amigável
  gem 'better_errors'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  #Gem dixa a mensagem de erro mais amigável
  gem 'better_errors'
  #Gerar um pdf da entiddade e relacionamento da aplicação
  gem "rails-erd"
  #A library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker'
  #Mailcatcher - Catches mail and serves it through a dream.
  gem 'mailcatcher'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
