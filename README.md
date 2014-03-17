## Setup
Create a `.env` file containing (you can change the login, email and password)
```
HTACCESS_USERNAME=admin
HTACCESS_PASSWD=test
RACK_ENV=development
PORT=3000
DEFAULT_ADMIN_EMAIL=admin@example.com
DEFAULT_ADMIN_PASSWORD=test
```

Then create a `Procfile` containing
```
web: bundle exec unicorn -p $PORT -E $RACK_ENV
```

You can now run the app using `foreman start`.