help:           ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

up: ## start minecraft and dns
	docker-compose up --detach	

down: ## stop minecraft and dns
	docker-compose down

check: ## check the minecraft server is available
	sudo nmap -sT -p 19132 localhost

whatsmyip: ## whats my IP address (for mac)
	@ipconfig getifaddr en0