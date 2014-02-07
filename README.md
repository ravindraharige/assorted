assorted
========

A repo for all misc stuff - helper scripts, txt, csvs, etc

1. pg.sh 
=========
Shell script to manage launch of PostgreSQL database for Mac OS X (10.9.1) <br>
The script was used after fresh intall of PostgreSQL server using <a href='http://brew.sh/'>Brew</a>.

```
$brew update
$brew install postgres
$brew doctor
$initdb /usr/local/var/postgres/ -E utf8
<copy pg.sh to $YOUR_DOWNLOAD_LOC>
```
To use pg.sh as command, do:
```
$chmod 777 pg.sh
$ln -s pg.sh /usr/local/bin/pg
```
Now you are all set to use short command to start, stop, restart and check status of PostgreSQL database server
```
$pg
PostgreSQL CLI launcher | Usage: {start|stop|status|restart}
```


			
