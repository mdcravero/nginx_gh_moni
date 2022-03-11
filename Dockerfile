FROM nginx

COPY files/index.html /usr/share/nginx/html/index.html

COPY files/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
