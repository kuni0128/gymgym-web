DOCKER_CMD:=docker compose

API_SERVICE_NAME:=api
API_RUN_CMD=${DOCKER_CMD} run ${API_SERVICE_NAME}

# -------------------
# Main command
# -------------------

up:
	${DOCKER_CMD} up -d
stop:
	${DOCKER_CMD} stop
ps:
	${DOCKER_CMD} ps

# -------------------
# API command
# -------------------

bundle/install:
	${API_RUN_CMD} bundle install
db/migrate:
	${API_RUN_CMD} rails db:migrate
rubocop:
	${API_RUN_CMD} bundle exec rubocop
rubocop/fix:
	${API_RUN_CMD} bundle exec rubocop -a
