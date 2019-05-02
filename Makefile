bash:
	docker-compose run --rm app bash

build:
	docker-compose build

run:
	docker-compose up
	@docker stop push-api_app || true
	@docker rm push-api_app || true
	docker-compose run --rm --name push-api_app app python manage.py runserver 0:8000

migrations:
	docker-compose run --rm app python manage.py makemigrations

migrate:
	docker-compose run --rm app python manage.py migrate

user:
	docker-compose run --rm app python manage.py createsuperuser