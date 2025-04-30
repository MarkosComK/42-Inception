FROM alpine:3.19

RUN apk update && apk add nginx vim bash
# ssl certificate for nginx
RUN apk add --no-cache openssl

RUN mkdir -p /run/nginx

# Copy your config (assuming you have a config file)
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

#script for generate ssl certificate
RUN mkdir -p /etc/nginx/ssh/
COPY ./tools/ssh.sh /etc/nginx/ssh/
RUN chmod +x /etc/nginx/ssh/ssh.sh
RUN /etc/nginx/ssh/ssh.sh

EXPOSE 80

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
