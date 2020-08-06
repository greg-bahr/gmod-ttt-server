docker_build:
	docker build -t gmod_ttt_server .

docker_run:
	docker run -p 27015:27015/udp 
		-e "STEAM_API_KEY=${STEAM_API_KEY}" \
		-e "WORKSHOP_COLLECTION_ID=${WORKSHOP_COLLECTION_ID}" \
		-e "PLAYER_COUNT=${PLAYER_COUNT}" gmod_ttt_server