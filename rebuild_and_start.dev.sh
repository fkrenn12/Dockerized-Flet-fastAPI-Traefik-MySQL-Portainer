# /mariadb/certs/./generate_certificates.sh
docker compose  --env-file ./.env.dev -f docker-compose.dev.yml up --build -d
