.SILENT:
.PHONY:

ifndef ARGS
ARGS = $(filter-out $@,$(MAKECMDGOALS))
endif

%:
	@:

#
# Inherited
#

update:
	docker-compose down
	docker-compose pull
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down
