# Use the official Node.js image from the Docker Hub
FROM node:14

# Create and change to the app directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

ARG DEFAULT_PORT=80

ENV PORT=$DEFAULT_PORT

# Expose the port the app runs on
EXPOSE $PORT

# Define the command to run the app
CMD ["npm", "start"]