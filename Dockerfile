FROM alpine:latest
LABEL Maintainer="" \
      Description="基于Alpine Linux的DOCKER镜像，检测CF代理IP."

# Install packages and remove default server definition
RUN apk --no-cache add jq curl tar wget bash && \
    mkdir -p /cf_ddns
# Configure 
COPY start.sh /cf_ddns/
COPY config.conf /cf_ddns/
COPY ./cf_ddns /cf_ddns/

# Add application
WORKDIR /cf_ddns/

# Expose the port nginx is reachable on
# EXPOSE 8080

# Let supervisord start
CMD ["/cf_ddns/start.sh"]
