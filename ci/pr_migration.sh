#!/bin/bash

git remote set-url pr $1
heroku rake db:migrate --remote $2
heroku rake db:seed --remote $2
heroku ps:scale web=1 --remote $2
heroku restart --remote $2
