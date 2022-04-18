MC_HOME=/share/homes/admin2021/Minecraft-Nintendo-Switch-Private-Server

system-docker run -d \
    -p 19132:19132/udp \
    -v $MC_HOME/minecraft/server/worlds/:/worlds \
    -v $MC_HOME/minecraft/server/server.properties:/server.properties \
    -e EULA=TRUE \
    --name minecraft \
    itzg/minecraft-bedrock-server