Fork of [laravel repo](https://github.com/laravel/laravel), adding Docker setup.

Prerequisites:
- Docker

Commands in examples are written for windows powershell.

## Create a new laravel app
* Clone this repo.
* Copy `.env.example` to a new `.env` file. Everything should be already configured as you need.

Note: If `DB_USER` is root, `DB_PASSWORD` cannot be empty, or the mysql container will crash on startup (security on mysql container's end).

Note: `DB_HOST:db` should remain

## Run laravel app
```
docker-compose up -d
```

### Initital setup : seeding
```
docker exec laravel php artisan migrate:fresh --seed
```