FROM fedora:39
RUN dnf makecache -y
#RUN dnf update -y
RUN dnf install -y caddy supervisor php
#php-fcgi
COPY ./container/etc/caddy/Caddyfile /etc/caddy/Caddyfile
COPY ./container/etc/supervisord.conf /etc/supervisord.conf
COPY ./container/var/www/html/ /var/www/html/
EXPOSE 80/tcp
EXPOSE 443/tcp
ENTRYPOINT supervisord --configuration=/etc/supervisord.conf