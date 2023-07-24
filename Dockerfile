FROM alpine:latest

RUN apk update && apk add --no-cache nodejs npm python3 chromium && \
    rm -rf /var/cache/apk/*

WORKDIR /app

CMD ["npm", "start"]
