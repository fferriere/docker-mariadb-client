FROM fferriere/base

MAINTAINER ferriere.florian@gmail.com

RUN apt-get install -y mariadb-client

ENTRYPOINT [ "mysql" ]
