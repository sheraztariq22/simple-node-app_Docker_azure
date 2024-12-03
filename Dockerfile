# Step 1: Use official Node.js image as the base image
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json to the container
COPY package*.json ./

# Step 4: Install the dependencies
RUN npm install

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Expose the application port
EXPOSE 3000

# Step 7: Start the application
CMD ["node", "index.js"]
