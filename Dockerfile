FROM node:latest as backend
WORKDIR /app
COPY package.json .
RUN npm install --force
COPY . .
CMD ["npm", "run", "start:dev"]
EXPOSE 3000
