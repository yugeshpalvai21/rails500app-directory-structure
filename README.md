# README

#### sets ruby 2.5.9 on local using rbenv
  ``` rbenv install 2.5.9 && rbenv local 2.5.9```

#### install bundler 
  ``` gem install bundler:1.17.3```
  ``` bin/bundle install ```   
#### create database and run migrations
 ``` bin/rails db:create && bin/rails db:migrate```

#### generate controller with action and without assets and helper
  ``` bin/rails g controller Pages home --no-assets --no-helper```

#### run server locally
  ``` bin/rails s```