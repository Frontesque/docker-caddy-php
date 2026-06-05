# Wordpress

### Prerequisites
```bash
podman exec -it wordpress dnf install php-mysqlnd php-gd php-intl php-mbstring php-xml php-zip php-json php-opcache php-mysqli
```

### First Run
```bash
podman run --name wordpress -p 8080:80 -v ./wordpress:/var/www/html:Z ghcr.io/frontesque/docker-caddy-php:latest
```

### Start
```bash
podman start wordpress
```
