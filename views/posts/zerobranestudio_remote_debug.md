# Using ZeroBrane Studio to do Remote Debug
<https://studio.zerobrane.com/doc-general-preferences#interpreter-path>

	$ luarocks install mobdebug

Then add:

	require('mobdebug').start("192.168.0.6") -- local machine IP address

You need the same source on your machine and the remote target

Start the debug server then start the target program (xavante/spawn-fcgi)

