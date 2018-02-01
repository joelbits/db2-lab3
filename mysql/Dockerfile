FROM mysql:5.7

RUN chown -R mysql:root /var/lib/mysql/

ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

ENV MYSQL_DATABASE=$MYSQL_DATABASE
ENV MYSQL_USER=$MYSQL_USER
ENV MYSQL_PASSWORD=$MYSQL_PASSWORD
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD

ADD orders.sql /etc/mysql/orders.sql
ADD users.sql /etc/mysql/users.sql
ADD reset_db.sql /etc/mysql/reset_db.sql

RUN sed -i 's/MYSQL_DATABASE/'$MYSQL_DATABASE'/g' /etc/mysql/reset_db.sql

RUN cp /etc/mysql/orders.sql /docker-entrypoint-initdb.d && \
    cp /etc/mysql/users.sql /docker-entrypoint-initdb.d

RUN echo "#!/bin/bash\nmysql -u$MYSQL_USER -p$MYSQL_PASSWORD < /etc/mysql/reset_db.sql" > /usr/bin/resetmydb && \
    chmod +x /usr/bin/resetmydb

EXPOSE 3306
