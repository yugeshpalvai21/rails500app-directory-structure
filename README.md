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


### NEW ADDITIONS and DEPRECATIONS in RAILS 5.0 VERSION

# New Features in Ruby on Rails 5.0

## 1. ActionCable
- **Real-time WebSocket Support**: Introduces ActionCable for handling WebSocket connections, allowing for real-time features in Rails applications.
- **Integrated with Rails**: Fully integrated with the Rails stack, including access to ActiveRecord, sessions, and more.

## 2. API Mode
- **Rails API**: A new `rails-api` mode is introduced, which allows you to create API-only applications, omitting unnecessary middleware for serving JSON responses.
- **Smaller Stack**: Excludes views, helpers, and assets by default.

## 3. ActionRecord Attributes API
- **Custom Types**: Introduces a new API for defining custom types in ActiveRecord models.
- **Serialization**: Allows easier serialization of custom attributes.

## 4. ActiveRecord `belongs_to` Required by Default
- **Association Changes**: The `belongs_to` association now requires the associated object to be present by default, encouraging better data integrity.

## 5. Application Record and Application Job
- **Base Classes**: `ApplicationRecord` and `ApplicationJob` are introduced as new base classes, replacing the direct use of `ActiveRecord::Base` and `ActiveJob::Base`.

## 6. Rails Command
- **Unified Command**: The new `rails` command replaces several individual commands (`rake`, `rails server`, `rails console`, etc.), unifying them under one command.

## 7. ActionController Render Enhancements
- **Rendering**: The `render` method now supports rendering different content types (e.g., JSON, HTML) within the same action.

## 8. Turbolinks 5
- **Turbolinks Update**: Turbolinks 5 brings Single Page Application (SPA)-like behavior, allowing entire pages to be replaced without a full reload, preserving the application’s state.

## 9. ActiveSupport Changes
- **Hash Transformations**: New methods such as `Hash#transform_keys` and `Hash#transform_values` allow for easier manipulation of hashes.
- **Time and Date Methods**: Enhancements in working with time zones and date/time formatting.

## 10. ActionMailer Enhancements
- **Delivery Notifications**: Introduces a way to receive notifications for mail delivery failures using ActiveSupport::Notifications.

## 11. ActiveJob Enhancements
- **Queue Adapter Swapping**: Allows changing the queue adapter for jobs on a per-job basis.

## 12. Deprecated Features
- **Rails 5.0 also deprecates some older methods and features, encouraging developers to adopt new practices and methods.**

