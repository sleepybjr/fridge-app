#!/bin/sh

echo "Waiting for postgres..."

#while ! nc -z users-db 5432; do
# sleep 0.1
#done

while ! pg_isready -h users-db -p 5432 -q -U postgres; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

echo "PostgreSQL started"

python manage.py run -h 0.0.0.0
