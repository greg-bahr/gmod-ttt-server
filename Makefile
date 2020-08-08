docker_build:
	docker build 
		--build-arg STEAM_API_KEY=${STEAM_API_KEY}
		--build-arg WORKSHOP_COLLECTION_ID=${WORKSHOP_COLLECTION_ID}
		--build-arg PLAYER_COUNT=${PLAYER_COUNT}
		-t gmod_ttt_server .

docker_run:
	docker run -p 27015:27015/udp gmod_ttt_server