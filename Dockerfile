# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/cohenerickson/Velocity.git .

# Install the dependencies
RUN npm install

# Build the application
RUN npm run build

# Expose the port your app runs on (change this if needed)
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
