FROM alpine:latest
LABEL Maintainer="" \
      Description="基于Alpine Linux的DOCKER镜像，检测CF代理IP."

# Install packages and remove default server definition
RUN apk --no-cache add jq curl tar wget bash

# Configure 
COPY cf_ddns/ /etc/

# Add application
WORKDIR /etc/cf_ddns/

# Expose the port nginx is reachable on
# EXPOSE 8080

# Let supervisord start nginx & php-fpm
CMD ["/etc/cf_ddns/start.sh"]
