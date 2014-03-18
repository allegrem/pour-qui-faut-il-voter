## Setup
Create a `.env` file containing (you can change the login, email and password)
```
RACK_ENV=development
PORT=3000

DEFAULT_ADMIN_EMAIL=admin@example.com
DEFAULT_ADMIN_PASSWORD=test

MAIL_ADDRESS=smtp.gmail.com
MAIL_PORT=587
MAIL_DOMAIN=mydomain.com
MAIL_USERNAME=admin@example.com
MAIL_PASSWORD=test
MAIL_AUTHENTICATION=plain
MAIL_STARTTLS=true
```

Then create a `Procfile` containing
```
web: bundle exec unicorn -p $PORT -E $RACK_ENV
```

You can now run the app using `foreman start`.
