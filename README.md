# README

#### sets ruby 2.5.9 on local using rbenv 
  ``` rbenv install 2.5.9 && rbenv local 2.5.9```
  > Optional: in case of ```Build Failed``` while installing then run ```RUBY_CFLAGS="-Wno-error=implicit-function-declaration" asdf install ruby 2.5.9 ```

#### install bundler 
  ``` gem install bundler:1.17.3```
  ``` bin/bundle install ```
  > Optional: in case if `unable to install pg gem` error appears then run `sudo apt install libpq-dev` helps here.

#### create database and run migrations
 ``` bin/rails db:create && bin/rails db:schema:load && bin/rails db:migrate```

#### generate controller with action and without assets and helper
  ``` bin/rails g controller <Controller_name> <action> --no-assets --no-helper```

#### run server locally
  ``` bin/rails s```