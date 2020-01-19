.PHONY: help build run

.DEFAULT_GOAL := help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## build a docker container from the local Dockerfile
	docker-compose build

run: ## create a container and shell into it for adhoc development
	docker-compose run local sh
