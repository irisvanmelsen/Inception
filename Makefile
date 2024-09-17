up : prep_dirs
	docker compose -f srcs/docker-compose.yml up -d

down :
	docker compose -f srcs/docker-compose.yml down

prep_dirs :
	mkdir -p ~/data
	mkdir -p ~/data/wp
	mkdir -p ~/data/db

clean : down
	docker system prune --all
	sudo rm -rf ~/data

.PHONY : prep_dirs up down clean