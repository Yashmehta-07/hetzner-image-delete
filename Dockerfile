# Use the official Node.js image as the base image
FROM node

# Set the working directory in the container
WORKDIR /node-app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 8000 from the container
EXPOSE 8000

# Command to run the application
CMD ["npm", "start"]