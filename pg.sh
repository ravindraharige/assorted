#!/bin/bash

#read pg.sh.md for more details
start()
{
        echo -n "Starting PostgreSQL server"
        echo $pg_home
	pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
        return
}

stop()
{
        echo -n "Stopping PostgreSQL server"
        pg_ctl -D /usr/local/var/postgres stop
	return
}

status()
{
	pg_ctl -D /usr/local/var/postgres status
	return
}

case "$1" in
    start)
        start
        ;;
    restart)
	stop
	start
	;;
    stop)
        stop
        ;;
    status)
        status
        ;;
    *)
        echo "PostgreSQL CLI launcher | Usage: {start|stop|status|restart}"
        exit 1
        ;;
esac
