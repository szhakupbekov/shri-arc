FROM node:8

WORKDIR /usr/src/app

COPY package*.json ./

ENV PORT=8080
ENV NODE_ENV=development

RUN npm install --quiet

COPY . .

RUN npm run build

EXPOSE 8080
CMD cd dist && open index.html