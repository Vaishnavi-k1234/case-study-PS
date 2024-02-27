 FROM node:20
 
# # Set working directory in the container
 WORKDIR /server
 
# # Copy package.json and package-lock.json
 COPY package*.json ./
 
# # Install app dependencies
 RUN npm install
 
# # Copy application files
 COPY . .
 
# # Expose port
 EXPOSE 3080
 
# # Command to run the application
CMD ["node", "server.js"]
