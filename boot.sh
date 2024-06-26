sudo docker compose up -d

docker compose exec django python manage.py makemigrations main view_sheet task_calendar authUser management support

docker compose exec django python manage.py migrate

docker compose exec django python manage.py collectstatic --noinput

docker compose exec django python manage.py test

if [ $? -eq 1 ]; then
    echo "!!!Warning!!!: テストにエラーや失敗が含まれています"
    
fi

echo "起動が完了しました"
