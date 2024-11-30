# Use Node.js as a base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the app's source code
COPY . .

# Expose the port your app runs on (adjust if necessary)
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]
