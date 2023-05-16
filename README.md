# README

The code in this repository is intended to accompany the tutorial originally published [here](https://www.colby.so/posts/turbo-rails-101-todo-list).

This application is a simple todo list, built with Rails 7, import maps, and Turbo. In it, we use Turbo Streams and Turbo Frames to allow users to create, edit, and delete todos without full page turns or custom JavaScript.

## Run Locally
To run this application locally, clone the repository and then:
```
bundle install
rails db:create db:migrate
bin/dev
```

## Run as Docker Container
To run this application as a Docker container, clone the repository and then:
```
docker build -t turbo-todo .
docker run -p 3000:3000 -d --name turbo-todo turbo-todo
```
