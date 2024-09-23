FROM node:22.9.0 AS build

WORKDIR /src

COPY package.json package-lock.json ./
COPY source/ ./source
COPY gulpfile.js ./

RUN npm install

EXPOSE 80

RUN npm run build

FROM nginx:1.27.1-alpine
COPY --from=build /src/theme/ /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
