# YARA Run bundle install then rake db:migrate then follow this slide http://karr.lewagon.org/lectures/rails/05-image-upload/#/2/1

source 'https://rubygems.org'
ruby '2.2.3'

gem 'aws-sdk', '< 2.0'
gem 'paperclip'
gem 'bourbon'

gem 'rails', '4.2.4'
gem 'pg'
gem 'figaro'
gem 'jbuilder', '~> 2.0'
gem 'devise'

gem 'sass-rails', '~> 5.0'
gem 'jquery-rails'
gem 'uglifier'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'simple_form'
gem 'autoprefixer-rails'
gem "pundit"
group :development, :test do
  gem 'binding_of_caller'
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
  gem 'puma'
end
