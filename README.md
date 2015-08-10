# docker-mariadb-client

This project create a MariaDB client on a docker container.
The container is based on [docker-base](https://github.com/fferriere/docker-base) image.

## Build

To build container run `build.sh` script. You can customize image's name with `FFERRIERE_MARIADB_CLIENT_IMAGE` variable. Example :
```
$ FFERRIERE_MARIADB_CLIENT_IMAGE="prefix/mariadb-client" ./build.sh
```

## Run

To run container execute `run.sh` script.

Example :
```
$ ./run.sh
```

If you have customized image :
```
$ FFERRIERE_MARIADB_CLIENT_IMAGE="prefix/mariadb-client" ./run.sh
```

## Root run

At the first run database hasn't users and you can want to add.
You should be connected on server to create user and by default root can connect with external host.
The `run-root.sh` script use the `/var/run/mysqld` volume from server container to use socket `mysqld.sock`.

You can inform on which server client must use with `FFERRIERE_MARIADB_SERVER_NAME` variable. Example :
```
$ FFERRIERE_MARIADB_SERVER_NAME='prefx-mariadb-server' ./run-root.sh
```

## Run with stdin

If you want to call client with stdin query its possible like that :
```
$ ./run.sh < ~/file.sql
or
$ cat ~/file.sql | ./run.sql
```

or with socket and root user :
```
$ ./run-root.sql < ~/file.sql
or
$ echo "CREATE USER user IDENTIFIED BY 'password'" | ./run-root.sql
```
