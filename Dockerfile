# YelpCamp - CapRover deploy
FROM node:18-alpine

WORKDIR /app

# Copy package files first for better layer caching
COPY package.json package-lock.json* ./

# Install dependencies (no devDependencies in production)
RUN npm ci --omit=dev || npm install --omit=dev

# Copy application source
COPY . .

# App uses process.env.PORT (CapRover sets this)
EXPOSE 3000

CMD ["node", "app.js"]
