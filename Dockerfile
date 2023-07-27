FROM node:18.17.0-alpine3.17

RUN apk add --no-cache python3 chromium && \
    rm -rf /var/cache/apk/*

WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies with omit dev dependencies
RUN npm install

CMD ["npm", "start"]
