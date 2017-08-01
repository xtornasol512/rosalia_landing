# !/usr/bin/env bash
# This loads fixtures automatically after deployment of review apps to Heroku

echo "=> Begin  postdeploy..."
# First, apply migrations to the schema
if [ $DEBUG_COLLECTSTATIC == 1 ]; then
  echo "=> Loading staticfiles..."
  # CHANGE FOR YOUR PROJECT!!
  python ./rosalia/manage.py collectstatic
else
  echo "=> Not apply automatically Migrations!"
fi

if [ $AUTO_MIGRATE == True ]; then
  echo "=> Loading fixtures..."
  # CHANGE FOR YOUR PROJECT!!
  python ./rosalia/manage.py migrate
else
  echo "=> Not apply automatically Migrations!"
fi

# Load Fixtures
# if [ $LOAD_FIXTURES == True ]; then
#   echo "=> Loading fixtures..."
#   python ./cryptosign/manage.py loaddata ./cryptosign/fixtures/initial_data.json
# else
#   echo "=> Not loading fixtures!"
# fi

# echo "=> Finish postdeploy..."