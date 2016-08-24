heroku run rake db:migrate &&
# heorku run rake db:seed &&
heroku ps:scale web=1 &&
heroku restart