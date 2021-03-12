# Working Example Deploying JupyterLab on Heroku

Working but bash is weird (no auto completion for example).

1. Change the password and public IP address in heroku-jupyter-test/conf/jupyter.py 
2. There are convenient functions ```gc``` and ```cnp``` in scripts that do ```git commit``` and ```git push``` and ```git clone```. 
    * ```gc``` is now hard coded to clone my repos
4. ```git clone https://github.com/beginnerSC/heroku-jupyter-test```
5. ```heroku login -i```
6. ```heroku container:login```
7. ```heroku create myapp```
8. cd to where Dockerfile is 
9. ```heroku container:push web -a myapp```
10. ```heroku container:release web -a myapp```
11. ```heroku open```
12. If the app won't open, ```heroku logs -a myapp``` to see what's wrong
