FROM alpine:latest
LABEL Maintainer="" \
      Description="基于Alpine Linux的DOCKER镜像，检测CF代理IP."

# Install packages and remove default server definition
RUN apk --no-cache add jq curl tar wget bash
RUN mkdir -p /etc/cf_ddns
# Configure 
COPY start.sh /etc/cf_ddns
COPY config.conf /etc/cf_ddns
COPY cf_ddns/ /etc/cf_ddns

# Add application
WORKDIR /etc/cf_ddns

# Expose the port nginx is reachable on
# EXPOSE 8080

# Let supervisord start nginx & php-fpm
CMD ["sh","/etc/cf_ddns/start.sh"]
