# Minecraft-Nintendo-Switch

from : [https://github.com/ConnorGraham/Minecraft-Nintendo-Switch-Private-Server](https://github.com/ConnorGraham/Minecraft-Nintendo-Switch-Private-Server)

Minecraft for Nintendo Switch doesn't allow connecting to Bedrock servers via IP. It only allows multiplayer by connecting to 1 of 5 pre-whitelsted public servers. Using docker, this repo contains everything necessary to connect your Nintendo Switch to your own private (or any other dedicated) server.

The basic premise is when your switch tries to connect to the Lifeboat Network, it is connecting to mco.lsbg.net. By running a local DNS service (bind9) and pointing the Switch to use your DNS service allows you to intercept the request to mco.lsbg.net and resolve it against your private (or any other dedicated) server's IP address

## Pre-requisites
1. Docker and Docker Compose
2. A static ip address for your machine running DNS
3. IP address of Minecraft BDS server

## Steps to run
1. Clone this repo
2. Edit `dns/data/bind/etc/zones/db.mco.lbsg.net` and replace 192.168.0.69 with the IP address of Minecraft server
3. start the dns and minecraft servers: `make up`
4. tail the minecraft logs to see its all working: `docker logs -f minecraft`
5. Lastly, in your Nintendo Switch network settings, set the primary DNS server to the private IP address of your machine running DNS
6. Open Minecraft, go to the realms tab and connect to Lifeboat Network. You should be connecting to your private server instead!
