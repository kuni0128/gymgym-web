DOCKER_CMD:=docker-compose -f docker-compose.yaml -p gymgym-web

API_SERVICE_NAME:=api
API_RUN_CMD=${DOCKER_CMD} run ${API_SERVICE_NAME}

# -------------------
# Main command
# -------------------

setup: build up _prepare
_prepare:
	${API_RUN_CMD} rails db:create
	${API_RUN_CMD} rails db:migrate
	${API_RUN_CMD} rails db:seed
build:
	${DOCKER_CMD} build
up:
	${DOCKER_CMD} up -d
down:
	${DOCKER_CMD} stop
ps:
	${DOCKER_CMD} ps
logs:
	${DOCKER_CMD} logs
console/api:
	${DOCKER_CMD} exec api bash
console/front:
	${DOCKER_CMD} exec front ash
console/db:
	${DOCKER_CMD} exec db bash

# -------------------
# API command
# -------------------

foo:
	${API_RUN_CMD} rails ${CMD}
bundle/install:
	${API_RUN_CMD} bundle install
db/migrate:
	${API_RUN_CMD} rails db:migrate
rubocop:
	${API_RUN_CMD} bundle exec rubocop
rubocop/fix:
	${API_RUN_CMD} bundle exec rubocop -a
rspec:
	${API_RUN_CMD} bundle exec rspec
