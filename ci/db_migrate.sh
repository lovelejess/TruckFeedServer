#!/bin/bash

git remote set-url $1 $2
heroku rake db:migrate --remote $1
heroku rake db:seed --remote $1
heroku ps:scale web=1 --remote $1
heroku restart --remote $1
