
DOCKER_COMPOSE_CHECK := $(shell command -v docker compose > /dev/null)
ifndef DOCKER_COMPOSE_CHECK
DOCKER_CMD := docker compose
else
DOCKER_CMD := docker-compose
endif



up:
	$(DOCKER_CMD) up

down:
	$(DOCKER_CMD) down

build:
	docker build .

make-migration: 
	$(DOCKER_CMD) run web python manage.py makemigrations

migrate: 
	$(DOCKER_CMD) run web python manage.py migrate

migrate: 
	$(DOCKER_CMD) run web python manage.py migrate
