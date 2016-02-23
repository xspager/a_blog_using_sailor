# Nginx + Lua on Ubuntu

Enable the Universe repo

	$ sudo apt-get install nginx-extras luarocks libsqlite3-dev libssl-dev

	$ luarocks install sailor luasql-sqlite3

on old versions of nginx-extras 1.4.6 on  line 40 of remi/nginx.conf ngx.resp can be nil
