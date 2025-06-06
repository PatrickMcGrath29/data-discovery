.PHONY: help up down build restart logs clean status shell

# Default target
help:
	@echo "Available targets:"
	@echo "  up        - Start all containers in detached mode"
	@echo "  down      - Stop and remove all containers"
	@echo "  build     - Build all containers"
	@echo "  rebuild   - Build and start containers (no cache)"
	@echo "  restart   - Restart all containers"
	@echo "  logs      - Show logs from all containers"
	@echo "  logs-api  - Show logs from API container only"
	@echo "  status    - Show container status"
	@echo "  shell     - Open shell in API container"
	@echo "  clean     - Stop containers and remove volumes"

# Start containers
up:
	docker compose up -d

# Stop containers
down:
	docker compose down

# Build containers
build:
	docker compose build

# Build and start (no cache)
rebuild:
	docker compose down
	docker compose build --no-cache
	docker compose up -d

# Restart containers
restart:
	docker compose restart

# Show logs
logs:
	docker compose logs -f

# Show API logs only
logs-api:
	docker compose logs -f api

# Show container status
status:
	docker compose ps

# Open shell in API container
shell:
	docker compose exec api /bin/sh

# Clean up everything
clean:
	docker compose down --volumes --remove-orphans
