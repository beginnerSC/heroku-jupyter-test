# Working Example Deploying JupyterLab on Heroku

Working but bash is weird (no auto completion for example).

1. Change the password and public IP address in heroku-jupyter-test/conf/jupyter.py 
2. There are convenient functions gc and cnp in scripts that do ```git commit``` and ```git push``` and ```git clone```. gc is now hard coded to git clone from my repo
3. ```git clone https://github.com/beginnerSC/heroku-jupyter-test```
4. ```heroku login -i```
5. ```heroku container:login```
6. ```heroku create myapp```
7. cd to where Dockerfile is 
8. ```heroku container:push web -a myapp```
9. ```heroku container:release web -a myapp```
10. ```heroku open```
11. If the app won't open, ```heroku logs -a myapp``` to see what's wrong
