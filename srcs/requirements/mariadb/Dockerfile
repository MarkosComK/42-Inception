FROM alpine:3.19

RUN apk update && apk add mariadb mariadb-client vim
RUN mkdir -p /etc/tools/

COPY ./tools/mariadb.sh /etc/mariadb/tools/

RUN chmod +x /etc/tools/mariadb.sh

#ENTRYPOINT ["/etc/tools/mariadb.sh"]

CMD ["/bin/sh"]
