# Schoolbox Backend

This repository contains the backend for my final project at the Flatiron School. The backend is built using Ruby on Rails with the FAST JSON API gem to serialize the data accessed by the frontend using AJAX. 

## Additional Information: 

### Database Diagram: 
![Database](./app/assets/database-diagram.png)


### Author: Drew Beckmen (Yale CS + Econ)

> The repository for the frontend is located here: https://github.com/drew-beckmen/schoolbox-online-learning

### Getting Started with the Project: 

* Clone with `git clone <url-here>`
* Run `bundle install` to install the necessary dependencies 
* Run `rails db:create` to initialize the database (PostgreSQL)
* Run `rails db:migrate` to create the necessary tables in the database 
* Run `rails db:seed` to add some seed data to the project (scraped from the web)
* Start the local server with `rails s` and visit the [frontend repository](https://github.com/drew-beckmen/schoolbox-online-learning) 
