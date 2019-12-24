FROM node:10.16.0-alpine
ADD . /app/
WORKDIR /app
COPY package.json /app
RUN npm install
RUN npm run populate
EXPOSE 8082
CMD npm run dev
