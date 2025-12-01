# Simple Dockerfile for teaching
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Install dependencies first (only package.json & lock) for better caching
COPY package.json package-lock.json* ./
RUN npm ci --production || npm install --production

# Copy app source
COPY . .

# Expose default port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
