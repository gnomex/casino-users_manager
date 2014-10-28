# CASino Users Controller
    This application provides a simple way to CRUD users for CASinoAPP

The [CASinoAPP](http://casino.rbcas.com/) is only for Authentication. At the first time, we need to configure some backend to create and manage users, for tests or a new users database.... and this code is for manage their users.

Its for: stub users for testing CASinoAPP

## Go!

1. Clone the source
2. go to project path (`cd ~path~/casino-users_manager/`)
3. configure the secrets (`config/secrets.yml`)
4. configure the database (`config/database.yml`)
5. run de blundler (`bundle install`)
6. run de bower (`bower install`)
7. to run the app (`rails s -p <PORT>`)
8. Then open `http://localhost:<PORT>`

* Run migration(`rake db:migrate`) - After run the migrations of CASinoAPP
* Run tests(`rspec spec`)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
