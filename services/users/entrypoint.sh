#!/bin/sh

echo "Waiting for postgres..."

while ! nc -z users-db 5432; do
 sleep 0.1
done

#while ! pg_isready -h users-db -p 5432 -q -U postgres; do
#  >&2 echo $(date -u) "Postgres is unavailable - sleeping"
#  sleep 1
#done
#
#echo $(date -u) "Sleep started."
#sleep 15
#echo $(date -u) "Sleep ended."

>&2 echo $(date -u) "PostgreSQL started"

python manage.py run -h 0.0.0.0
