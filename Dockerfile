# Use the official Node.js image from the Docker Hub
FROM node:latest

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy project
COPY . .

# Build the application
RUN npm run build

# Start the application
CMD ["npm", "start"]