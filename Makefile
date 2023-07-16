# https://codeblog.dotsandbrackets.com/quick-intro-to-docker-compose/


 DOCKER_COMPOSE=docker-compose
 #DOCKER_COMPOSE=docker compose
 # On latest docker version, use 'docker compose'

up: ## Start all containers in foreground
	@$(DOCKER_COMPOSE) up --remove-orphans -d
rebuild: ## Start all containers in foreground
	@$(DOCKER_COMPOSE) up --remove-orphans -d --no-deps --build lab
uplog: ## Start all containers in foreground
	@$(DOCKER_COMPOSE) up --remove-orphans 
	
down: ## Stop all containers
	@$(DOCKER_COMPOSE) down

restart: ## Restart all containers in foreground
	@$(DOCKER_COMPOSE) restart -d

