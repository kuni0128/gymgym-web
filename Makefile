DOCKER_CMD:=docker compose

up:
	${DOCKER_CMD} up -d
stop:
	${DOCKER_CMD} stop
ps:
	${DOCKER_CMD} ps
