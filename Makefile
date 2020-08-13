all: docker_build docker_run

docker_build:
	docker build -t gmod_ttt_server .

docker_run:
	docker run -d --restart always -p 27015:27015/udp \
		-e AWS_ACCESS_KEY_ID \
		-e AWS_SECRET_ACCESS_KEY \
		-e AWS_DEFAULT_REGION \
		-e CONFIG_BUCKET \
		gmod_ttt_server
