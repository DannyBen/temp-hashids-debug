HashIDs Debug Repo
==================================================

Usage
--------------------------------------------------

1. Clone the repo
2. See a failing test by running:

    $ rails test

3. See a passing test by running:

    $ SIGN_HASHIDS=yes rails test


Files of interest
--------------------------------------------------

- `config/initializers/hashids.rb` - HashIDs config (including handling of 
  `SIGN_HASHIDS`)
- `app/models/user.rb`
- `test/models/user_test.rb`
- `test/fixtures/users.yml`


Repo created with
--------------------------------------------------

    $ rails new .
    $ rails db:create
    $ rails g model user name:string
    $ rails db:migrate RAILS_ENV=test
