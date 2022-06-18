docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-build:
	docker-compose up --build -d

test:
	docker exec app_php-cli_1 vendor/bin/phpunit --colors=always

assets-install:
	docker exec app_node_1 yarn install

assets-watch:
	docker exec app_node_1 yarn run watch

assets-dev:
	docker exec app_node_1 yarn run dev

perm:
	sudo chown ${USER}:${USER} bootstrap/cache -R
	sudo chown ${USER}:${USER} storage -R
	sudo chmod -R 777 storage
