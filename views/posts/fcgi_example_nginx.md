# FCGI Example + Nginx

	$ apt-get install lighttpd libfcgi-dev virtualenvwrapper gcc make libsqlite3-dev libssl-dev libreadline-dev unzip spawn-fcgi
	$ luarocks install wsapi-fcgi # need the latest version on Lua 5.3
	$ luarocks install cgilua

<https://www.digitalocean.com/community/tutorials/understanding-and-implementing-fastcgi-proxying-in-nginx>

<https://gist.github.com/xspager/86aacbd44d8a9996c8e6>

	$ spawn-fcgi -f /home/pi/index.lua -p 9000

