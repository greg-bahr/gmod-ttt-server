FROM cm2network/steamcmd:root
EXPOSE 27015/udp

RUN apt update && \
    apt install -y git curl unzip && \
    cd /usr/local && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf aws

USER steam

RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/gmod_server +app_update 4020 validate +quit && \
    mkdir /home/steam/game_content && \
    /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/game_content/css +app_update 232330 validate +quit

COPY start.sh /home/steam/gmod_server/

ENTRYPOINT ["/home/steam/gmod_server/start.sh"]
