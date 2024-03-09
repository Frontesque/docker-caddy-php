FROM fedora:39
RUN dnf makecache -y
RUN dnf install -y caddy supervisor php php-fpm
RUN dnf clean all
RUN mkdir /run/php-fpm/
COPY ./container/ /
EXPOSE 80/tcp
EXPOSE 443/tcp
ENTRYPOINT supervisord --configuration=/etc/supervisord.conf
