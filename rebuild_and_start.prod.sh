# /mariadb/certs/./generate_certificates.sh
docker compose  --env-file ./.env --env-file ./.env.prod -f docker-compose.yml up --build -d
