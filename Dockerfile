# Use an official Node runtime as the base image
FROM node:20.12

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source
COPY . .

RUN chown -R node:node ./

USER node

# Use an ARG for the port number
ARG CONTAINER_PORT

# Print the value of CONTAINER_PORT
RUN echo "Exposed port: ${CONTAINER_PORT}"

# Make port available to the world outside this container
EXPOSE $CONTAINER_PORT
