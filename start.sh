#!/bin/bash

# Sync new config
aws s3 sync s3://${CONFIG_BUCKET}/ttt /home/steam/gmod_server/garrysmod

# Export env vars
source /home/steam/gmod_server/garrysmod/ttt.env

# Start the server
/home/steam/gmod_server/srcds_run -game garrysmod -maxplayers $PLAYER_COUNT +gamemode terrortown +map ttt_Clue_se +host_workshop_collection $WORKSHOP_COLLECTION_ID -authkey $STEAM_API_KEY
