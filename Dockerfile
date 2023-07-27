FROM node:18.17.0-alpine3.17

RUN apk add --no-cache python3 chromium && \
    rm -rf /var/cache/apk/*

WORKDIR /app

CMD ["npm", "start"]
