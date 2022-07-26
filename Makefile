build:
	docker-compose -f docker-compose.production.yml build

up:
	docker-compose -f docker-compose.production.yml up

assets:
	docker-compose -f docker-compose.production.yml run --rm rails rails assets:precompile RAILS_ENV=production

migrate:
	docker-compose -f docker-compose.production.yml run rails rails db:migrate RAILS_ENV=production
