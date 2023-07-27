FROM node:16.16.0-alpine

# Install dependencies
RUN apk update && \
    apk add --no-cache python3 chromium udev ttf-freefont

# Set environment variables
ENV CHROME_BIN=/usr/bin/chromium-browser
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

# Set the working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies with omit dev dependencies
RUN npm install
RUN npm install puppeteer

# Start the application
CMD ["npm", "start"]
