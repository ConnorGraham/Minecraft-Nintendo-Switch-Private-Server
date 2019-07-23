# Minecraft-Nintendo-Switch

Minecraft for Nintendo Switch only allows multiplayer by connecting to 1 of 5 pre-whitelsted public servers. Using docker, this repo contains everything necessary to connect your Nintendo Switch to your own private server.

The basic premise is when your switch tries to connect to the Lifeboat Network, it is connecting to mco.lsbg.net. By running a local DNS service (bind9) and pointing the Switch to use your DNS service allows you to intercept the request ot mco.lsbg.net and resolve it against your private server's IP address

## Pre-requisites
1. Docker and Docker Compose
2. A static ip address for your machine running DNS and Minecraft

## Steps to run
1. Clone this repo
2. Edit dns/data/bind/etc/zones and replace 192.168.0.69 with the private IP address of your machine running Minecraft
3. Run Minecraft server by going to /minecraft and running 
```
docker-compose up
```
4. In a separate window, Run DNS by goinge to /dns and running
```
docker-compose up
```
5. Lastly, in your Nintendo Switch network settings, set the primary DNS server to the private IP address of your machine running DNS
6. Open Minecraft, go to the realms tab and connect to Lifeboat Network. You should be connecting to your private server instead!
