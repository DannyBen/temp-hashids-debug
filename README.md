HashIDs Debug Repo
==================================================

Test
--------------------------------------------------

This test passes:

    $ SIGN_HASHIDS=yes rails test

This test fails:

    $ SIGN_HASHIDS=no rails test


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
