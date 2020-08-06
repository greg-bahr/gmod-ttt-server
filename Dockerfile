FROM cm2network/steamcmd:latest
EXPOSE 27015/udp

ENV WORKSHOP_COLLECTION_ID 12345
ENV STEAM_API_KEY 12345
ENV PLAYER_COUNT 20

RUN ~/steamcmd/steamcmd.sh +login anonymous +force_install_dir ~/gmod_server +app_update 4020 validate +quit && \
    mkdir ~/game_content && \
    ~/steamcmd/steamcmd.sh +login anonymous +force_install_dir ~/game_content/css +app_update 232330 validate +quit && \
    ~/steamcmd/steamcmd.sh +login anonymous +force_install_dir ~/game_content/tf2 +app_update 232250 validate +quit && \
    /home/steam/gmod_server/srcds_run -game garrysmod -maxplayers $PLAYER_COUNT +gamemode terrortown +map ttt_Clue_se +host_workshop_collection $WORKSHOP_COLLECTION_ID -authkey $STEAM_API_KEY +quit

COPY mount.cfg /home/steam/gmod_server/garrysmod/cfg/
COPY server.cfg /home/steam/gmod_server/garrysmod/cfg/
COPY users.txt /home/steam/gmod_server/garrysmod/data/ulib/

CMD /home/steam/gmod_server/srcds_run -game garrysmod -maxplayers $PLAYER_COUNT +gamemode terrortown +map ttt_Clue_se +host_workshop_collection $WORKSHOP_COLLECTION_ID -authkey $STEAM_API_KEY