# Wordpress

### Prerequisites
```bash
podman exec -it wordpress dnf install -y php-mysqlnd php-gd php-intl php-mbstring php-xml php-zip php-json php-opcache php-mysqli php-imagick
```

### First Run
```bash
podman run \
  --name wordpress \
  --network=host \
  -v ./Caddyfile:/etc/caddy/Caddyfile:Z \
  -v ./wordpress:/var/www/html:Z \
  ghcr.io/frontesque/docker-caddy-php:latest
```

### Start
```bash
podman start wordpress
```
