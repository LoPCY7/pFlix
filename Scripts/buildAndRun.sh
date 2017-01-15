#!/bin/bash
cd ~/pFlix/
sed -i 's/STRIPE_PUBLISHABLE_KEY=!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!/STRIPE_PUBLISHABLE_KEY=pk_test_tucThm6jftvGdjRfkBYhw7S3/g' docker-compose.yml
sed -i 's/STRIPE_SECRET_KEY=!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!/STRIPE_SECRET_KEY=sk_test_3Rd8y70RSmynFztLExEOksoz/g' docker-compose.yml
docker-compose build
docker-compose run app db:create
docker-compose run app db:migrate
docker-compose up