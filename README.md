Fork of [laravel repo](https://github.com/laravel/laravel), adding Docker setup.

Requirements:
- Docker
- Git (optional, to get these sources)

## Create a new laravel app
```
git clone https://github.com/VivienLN/laravel-docker.git <MYPROJECT>
cd <MYPROJECT>
cp .env.example .env
```
Everything in `.env` should be already configured as you need, but feel free to change things like app name, mysql user name or database name. `DB_HOST` should remain as it is though, because it's referencing the `db` container name.

> Note: If `DB_USER` is root, `DB_PASSWORD` cannot be empty, or the mysql container will crash on startup (security on mysql container's end).

> Note: If you don't want to use git, just download and unzip on your project directory.

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