# Welcome to Migrant rails app

## Make a user a admin

Run from the command line:

```
rake users:create_admin[you@example.com]
```

Or to do so on heroku app:

```
heroku run rake users:create_admin[you@example.com]
```

Or to do so on the current Digital Ocean setup:

```
dokku run migrant2 rake users:create_admin[you@example.com]
```
