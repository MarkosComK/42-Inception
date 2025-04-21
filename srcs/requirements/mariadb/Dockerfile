FROM alpine:3.19

RUN apk update && apk add mariadb mariadb-client vim bash

#mariadb script dir
RUN mkdir -p /etc/mariadb/tools/
COPY ./tools/mariadb.sh /etc/mariadb/tools/
RUN chmod +x /etc/mariadb/tools/mariadb.sh

#base mysql dirs
RUN mkdir -p /var/lib/mysql
RUN mkdir -p /run/mysqld
RUN chown -R mysql:mysql /var/lib/mysql /run/mysqld

ENTRYPOINT ["/etc/mariadb/tools/mariadb.sh"]

CMD ["mysqld"]
