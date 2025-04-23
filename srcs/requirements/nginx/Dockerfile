FROM alpine:3.19

RUN apk update && apk add nginx vim bash
# ssl certificate for nginx
RUN apk add --no-cache openssl

RUN mkdir -p /run/nginx

# Copy your config (assuming you have a config file)
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
