up : prep_dirs
	docker compose -f srcs/docker-compose.yml up -d

down :
	docker compose -f srcs/docker-compose.yml down

prep_dirs :
	mkdir -p ~/data
	mkdir -p ~/data/wordpress
	mkdir -p ~/data/mariadb

clean : down
	docker system prune --all
	sudo rm -rf ~/data

.PHONY : prep_dirs up down clean

maria:
	docker exec -it mariadb bash

maxclean:
	@docker stop $(shell docker ps -qa) || true
	@docker rm $(shell docker ps -qa) || true
	@docker rmi -f $(shell docker images -qa) || true
	@docker network rm $(shell docker network ls -q) 2>/dev/null || true
	@docker system prune -f || true
	@docker volume prune -f || true
	@docker network prune -f || true
	
# @docker volume rm $(shell docker volume ls -q) || true