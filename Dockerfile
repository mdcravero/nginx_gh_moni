FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/www/moni/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
