FROM alpine:3.19

RUN apk update && apk add nginx vim bash
# ssl certificate for nginx
RUN apk add --no-cache openssl

RUN mkdir -p /run/nginx

# Copy your config (assuming you have a config file)
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

#script for generate ssl certificate
RUN mkdir -p /etc/nginx/ssh/
COPY ./tools/ssl.sh /etc/nginx/ssl/
RUN chmod +x /etc/nginx/ssl/ssl.sh
RUN /etc/nginx/ssl

EXPOSE 80

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
