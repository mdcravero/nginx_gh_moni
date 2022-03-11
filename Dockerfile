FROM nginx

COPY files/index.html /usr/share/nginx/html/index.html

COPY files/nginx.conf /etc/nginx/conf.d/default.conf

RUN chown -R www-data:www-data /var/log/nginx;
RUN chmod -R 755 /var/log/nginx;

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
