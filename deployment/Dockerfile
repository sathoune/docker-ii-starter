FROM docker:20-dind
WORKDIR /app
RUN apk add --no-cache curl

COPY dev/compose.prod.yml .
COPY dev/python-read/.env ./python-read/.env
COPY dev/python-write/.env ./python-write/.env
COPY dev/frontend/.env ./frontend/.env