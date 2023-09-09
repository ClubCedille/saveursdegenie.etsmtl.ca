FROM node:14 AS build

WORKDIR /src

COPY . .

RUN npm install

EXPOSE 80

RUN npm run build

FROM nginx:1.23.3-alpine
COPY --from=build /src/theme/ /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
