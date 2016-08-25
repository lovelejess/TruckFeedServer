web: bundle exec unicorn -p $PORT
worker: heroku run rake db:migrate && heroku ps:scale web=1 && heroku restart