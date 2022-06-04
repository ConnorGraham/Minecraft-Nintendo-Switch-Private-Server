MC_HOME=/share/homes/admin2021/Minecraft-Nintendo-Switch-Private-Server

system-docker run -d \
    -p 53:53/udp \
    -p 10000:10000/tcp \
    -v $MC_HOME/dns/data/:/data \
    --name dns \
    sameersbn/bind:9.11.3-20190706