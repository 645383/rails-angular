#!/bin/bash -e


bundle install
rake bower:install
rake db:create 
rake db:migrate
rake db:seed
