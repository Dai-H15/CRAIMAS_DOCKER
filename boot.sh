sudo docker compose up -d

docker compose exec django python manage.py makemigrations main view_sheet task_calendar authUser management

docker compose exec django python manage.py migrate

docker compose exec django python manage.py collectstatic --noinput

echo "起動が完了しました"
