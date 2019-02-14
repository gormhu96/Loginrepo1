FROM nginx

RUN mkdir -p /etc/ssl/certs && chmod 600 /etc/ssl/certs

COPY conf.d/api-login.conf /etc/nginx/conf.d/api-login.conf

COPY /etc/ssl/localhost/localhost.crt /etc/ssl/certs/localhost.crt

COPY /etc/ssl/localhost/localhost.key /etc/ssl/certs/localhost.key

