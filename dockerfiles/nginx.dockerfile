#Setting /nginx/default.conf
FROM nginx:stable-alpine
 
 WORKDIR /etc/nginx/conf.d
 
 COPY nginx/default.conf .
 
 RUN mv default.conf default.conf
 
 WORKDIR /var/www/html
 
 COPY src .

RUN apk update && apk add --no-cache nodejs npm

RUN npm install
