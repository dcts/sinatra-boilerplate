# Sinatra Boilerplate

- Simple [Sinatra Webapp](http://sinatrarb.com/)
- follows MVC Pattern
- no Database
- ready to deploy on Heroku

### Running Locally
- to run the app on localhost, clone this repo
- `cd` into the directory
- run `ruby lib/app.rb` and a local server will be started at port 4567
- simply open `localhost:4567` in any browser

### Deployment on Heroku
Be sure to have the following:
- config.ru

```bash
# login to heroku
heroku login

# create new heroku app (if not already one existant)
heroku create <APP-NAME>

# be sure that this is a git repository
git init # if not initialized
git remote -v # show all remote
git remote add heroku <LINK-TO-HEROKU-REPO> # git.heroku.com/YOUR-APP-NAME...

# deploy
git push heroku master
```

by dcts / v 0.0
