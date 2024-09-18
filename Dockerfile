# Use the official Node.js image with Alpine Linux for a smaller footprint
FROM node:21-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./

# Install the application's dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that the app runs on (default is 3000, change if needed)
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]
