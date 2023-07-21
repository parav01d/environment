init:
	chmod +x scripts/init.sh
	bash "./scripts/init.sh"

development:
	- docker-compose -p "spcfy" -f "compose/development.compose.yml" up -d --build --remove-orphans

stop_development:
	- docker-compose -p "spcfy" -f "compose/development.compose.yml" stop

pull:
	chmod +x scripts/pull.sh
	bash "./scripts/pull.sh"