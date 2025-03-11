FROM node:18

WORKDIR /app

RUN git clone https://github.com/cohenerickson/Velocity.git .

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
