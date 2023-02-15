set -e

docker compose up -d --build
docker compose down --remove-orphans

docker tag app-read-backend registry:5000/read-backend
docker tag app-write-backend registry:5000/write-backend
docker tag app-frontend registry:5000/frontend

docker push registry:5000/read-backend
docker push registry:5000/write-backend
docker push registry:5000/frontend
