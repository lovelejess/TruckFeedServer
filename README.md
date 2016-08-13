# TruckFeedServer
https://damp-escarpment-86736.herokuapp.com/

### Running Postgres locally::
```
bundle install
bundle update
bundle exec rake -T
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

### Deploying to Heroku:
```
heroku rake db:migrate --remote <REMOTE APP NAME>
heorku rake db:seed --remote <REMOTE APP NAME>
heroku ps:scale web=1
heroku restart --remote <REMOTE APP NAME>
```

### Useful Heroku Commands:
```
heroku logs --remote <REMOTE APP NAME>
heroku ps:scale web=1
heroku restart --remote <REMOTE APP NAME>
heroku pg:pull DATABASE_URL mylocaldb --remote <REMOTE APP NAME>
heroku pg:push mylocaldb DATABASE_URL --app <REMOTE APP NAME>
```