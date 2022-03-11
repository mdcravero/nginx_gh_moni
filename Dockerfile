FROM nginx:1.21.6

COPY files/default.conf.template /etc/nginx/conf.d/default.conf.template
COPY files/nginx.conf /etc/nginx/conf.d/default.conf
COPY files/index.html /usr/share/nginx/html/index.html


CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'
