Fork of [laravel repo](https://github.com/laravel/laravel), adding Docker setup.

Requirements:
- Docker
- Git (optional, to get these sources)

## Create a new laravel app
* Clone or download this repo.
* Copy `.env.example` to a new `.env` file. Everything should be already configured as you need.

> Note: If `DB_USER` is root, `DB_PASSWORD` cannot be empty, or the mysql container will crash on startup (security on mysql container's end).

> Note: `DB_HOST:db` should remain

## Run laravel app
```
docker-compose up -d
```

### Error on laravel container
On windows, you may encounter this error in the laravel container: `/usr/local/bin/docker-php-entrypoint: 9: exec: docker/laravel_init.sh: not found`. Change the encoding of the file `docker/laravel_init.sh` to CRLF => LF to fix.

## Seeding
```
docker exec laravel php artisan migrate:fresh --seed
```