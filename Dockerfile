FROM node:alpine

WORKDIR /usr/app/frontend

COPY package*.json ./
RUN npm install react-scripts -g && npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]