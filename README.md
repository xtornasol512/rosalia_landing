Heroku Django Boilerplate
============================


## The most basic boilerplate to use django on Heroku
With all requirements that heroku recommend

### Only testing on Mac and Linux and with python 2.7, soon with python 3.x

### Requirements

1. Have Python 2.7
2. Have venv for python
3. Create your app on heroku

### Installing on Local

Clone git repository
```
1. git clone https://github.com/xtornasol512/heroku-django-boilerplate.git
2. cd heroku-django-boilerplate
```

Install python enviroment
```
$ python -m venv venv/dj27
```

Get up environ
```
$ source ./venv/dj27/bin/activate
```

Install dependencies
```
(dj27) $ pip install requirements.txt
```

Make migrations
```
(dj27) $ python boilerapp/manage.py migrate
```

Run server and that's IT, you can add a custom port on development llike 9000 or whatever
```
(dj27) $ python boilerapp/manage.py runserver 8000
```
