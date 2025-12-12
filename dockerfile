# ใช้ base image
FROM node:20

# set working directory
WORKDIR /app

# copy package.json
COPY package*.json ./

# install dependencies
RUN npm install

# copy source code
COPY . .

# expose port
EXPOSE 3000

# start app
CMD ["npm", "start"]
