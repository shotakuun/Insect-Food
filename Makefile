bundle:
	docker-compose -f docker-compose.production.yml run rails bundle install
build:
	docker-compose -f docker-compose.production.yml build
assets:
	docker-compose -f docker-compose.production.yml run --rm rails rails assets:precompile RAILS_ENV=production
migrate:
	docker-compose -f docker-compose.production.yml run rails rails db:migrate RAILS_ENV=production
up:
	docker-compose -f docker-compose.production.yml up
log:
	docker-compose -f docker-compose.production.yml run rails tail -f log/production.log

