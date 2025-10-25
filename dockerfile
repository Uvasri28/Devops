FROM nginx:stable-alpine

RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js
COPY img /usr/share/nginx/html/img

EXPOSE 80
CMD ["nginx" , "-g", "daemon off;"]
