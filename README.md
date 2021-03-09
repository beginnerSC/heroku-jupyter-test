# Working Example Deploying JupyterLab on Heroku

Working but bash is weird (no auto completion for example).

1. Change the password and public IP address in heroku-jupyter-test/conf/jupyter.py 
1. ```git clone https://github.com/beginnerSC/heroku-jupyter-test```
1. ```heroku login -i```
1. ```heroku container:login```
1. ```heroku create myapp```
1. cd to where Dockerfile is 
1. ```heroku container:push web -a myapp```
1. ```heroku container:release web -a myapp```
1. ```heroku open```
1. If the app won't open, ```heroku logs -a myapp``` to see what's wrong
