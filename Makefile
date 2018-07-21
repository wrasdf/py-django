.PHONY: build stop run

compose-build:
	docker-compose build app

stop:
	docker stop $$(docker ps -aq) 1&2>/dev/null
	docker rm $$(docker ps -aq) 1&2>/dev/null
	rm -rf ./data/pg/*
	rm -rf ./data/redis/*

up: stop compose-build
	docker-compose up


build:
	docker build -t django:latest .

sh: build
	docker run --rm -it -p 8080:8080 -v $$(pwd):/app django:latest /bin/bash

# --

run:
	python app/manage.py migrate --noinput
	python app/manage.py runserver 0.0.0.0:8080
