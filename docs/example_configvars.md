## Example of config vars
=============================

```bash
#!/bin/bash

echo "-------- Setting environmental variables into ~/.profile..."

# linux environs
source ~/.profile

# Mac Os, if not exist them create it!
# source ~/.bash_profile


# DEBUG_STATE
if [ -z "$DEBUG_STATE" ] || [ "$DEBUG_STATE" != True ]; then
  echo "export DEBUG_STATE=True" >> ~/.profile
fi

# PRODUCTION
if [ -z "$PRODUCTION" ] || [ "$PRODUCTION" != False ]; then
  echo "export PRODUCTION=False" >> ~/.profile
fi

# SECRET_KEY
if [ -z "$SECRET_KEY" ] || [ "$SECRET_KEY" != "SomeKeyEncrypted123/&$/%&(=" ]; then
  echo "export SECRET_KEY='SomeKeyEncrypted123/&$/%&(='" >> ~/.profile
fi

# AUTO_MIGRATE
if [ -z "$AUTO_MIGRATE" ] || [ "$AUTO_MIGRATE" != False ]; then
  echo "export AUTO_MIGRATE=False" >> ~/.profile
fi

# LOAD_FIXTURES
if [ -z "$LOAD_FIXTURES" ] || [ "$LOAD_FIXTURES" != False ]; then
  echo "export LOAD_FIXTURES=False" >> ~/.profile
fi

# DATABASE_URL
if [ -z "$DATABASE_URL" ] || [ "$DATABASE_URL" != 'postgres://vagrant:vagrant@localhost/mydb' ]; then
  echo "export DATABASE_URL='postgres://vagrant:vagrant@localhost/mydb'" >> ~/.profile
fi

# Or sqlLite
# if [ -z "$DATABASE_URL" ] || [ "$DATABASE_URL" != 'sqlite:////full/path/to/your/database/file.sqlite' ]; then
#   echo "export DATABASE_URL='sqlite:////full/path/to/your/database/file.sqlite'" >> ~/.profile
# fi

echo "DONE"
```
