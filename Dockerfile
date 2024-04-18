# Use a base image with Node.js installed
FROM node:19.7.0-alpine

# Set the environment variable NODE_ENV with a value of production.
ENV NODE_ENV production

# Set the working directory in the container
WORKDIR /nodejsapp

# Change the ownership to the node user and node group.
RUN chown -R node:node /nodejsapp

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your server runs on
EXPOSE 3000

# Command to run your application
CMD ["node", "app.js"]
