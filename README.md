# Docker Caddy PHP
A Docker container that runs Caddy and PHP

### Information
You many modify your <code>Caddyfile</code> located at <code>/var/caddy/Caddyfile</code> within your container.

You may also add content to the directory <code>/var/www/html/</code>.

You should purge the contents of <code>/var/www/html</code> before adding your own conas that is where this test page currently resides.

To use PHP in your caddyfile, point the <code>php_fastcgi</code> directi<code>unix//run/php-fpm/www.sock</code>.

###   Build
```bash
# No SELinux
docker build -t caddy-php .
# SELinux
docker build --cgroup-manager cgroupfs -t caddy-php .
```

### Test Run
```
docker run -p 8080:80 ghcr.io/frontesque/docker-caddy-php:latest
# Access test page on port 8080
```

### Demo Dockerfile
```
# Coming soon
```