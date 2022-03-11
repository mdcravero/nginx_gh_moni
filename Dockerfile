FROM nginx

RUN rm -rf /etc/nginx/sites-available/default

COPY files/nginx.conf /etc/nginx/conf.d/nginx.conf
COPY files/index.html /var/www/moni/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
