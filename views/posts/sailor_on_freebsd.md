# Sailor on FreeBSD

	> sudo pkg install gcc gmake py27-virtualenv
	> virtualenv hererocks-ve
	> source hererocks-ve/bin/activate.csh
	> pip install hererocks
	> hererocks -l 5.2 -r^ ~/.lua/52
	> luarocks install sailor
