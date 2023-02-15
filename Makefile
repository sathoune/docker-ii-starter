.PHONY: u d ub dev dev-down
default: u

dev: dev-down
	cd dev && docker compose up -d && cd ..
dev-down:
	cd dev && docker compose down --remove-orphans && cd ..

u: d
	docker compose up -d

d:
	docker compose down --remove-orphans

ub: d
	docker compose up -d --build

pipeline:
	docker compose exec pipeline-runner sh ./ci-scripts/push-images.sh