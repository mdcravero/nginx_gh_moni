FROM nginx

COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/index.html /var/www/moni/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
