# Use official Node.js image as a base image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /

# Copy package.json and package-lock.json (or yarn.lock) into the container
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app will run on
EXPOSE 4500

# Command to run the app
CMD ["npm", "start"]
