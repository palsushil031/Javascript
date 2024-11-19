FROM node:14

#set the working directory inside the container 
WORKDIR /app  

#copy the package.json files inside the /app directory and install the necessary packages
COPY package.json ./
RUN npm install 

# copying the remaning files 
COPY . .

#Application will expose on 3000 port

EXPOSE 3000

# Start the application
CMD ["node", "index"]


