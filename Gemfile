source 'https://rubygems.org'
gem "rake"
gem "bundler"
# Bundle edge Ra.ils instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem "font-awesome-rails"
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-turbolinks', '~> 2.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'fancybox', '~> 0.0.20'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#Dodane wlasne gemy
gem 'bootstrap-sass', '~> 3.3.7' # komponeny grafiki
gem 'devise', '~>4.2.0' # obsługa użytkowników
gem 'chartkick' # wykresy
gem 'groupdate' # dodatek do wykresów
gem 'barby' # kody qr
gem 'rqrcode' # kody qr
gem 'prawn', '~> 2.1' # generowanie pdf
gem 'prawn-table', '~> 0.1.0' # dodatek do pdf
gem 'will_paginate', '~> 3.1.0' # paginacja
gem 'will_paginate-bootstrap' # dodatek do paginacji

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'pg', '~> 0.18'
  gem 'rails_12factor', '0.0.2'
end