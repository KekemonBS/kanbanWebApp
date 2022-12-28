containers = postgres kanbanWebApp
up:
	docker compose up -d	
stop:
	docker compose stop
down:
	docker compose down
purge: down
	docker rm -f $(containers)
	docker rmi -f $(containers)
rebuild: purge
	docker compose up --build -d
