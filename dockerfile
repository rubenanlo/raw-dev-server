FROM node:14.16.0-alpine3.13

RUN addgroup app && adduser -S -G app app
USER app


WORKDIR /app
COPY package*.json ./
RUN npm install && npm uninstall bcrypt && npm install bcrypt
COPY . . 

EXPOSE 5005 

CMD ["npm", "start"]