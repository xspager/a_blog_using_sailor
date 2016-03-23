# Running Sailor on the Haiku Operating System

If you never heard of [Haiku](https://en.wikipedia.org/wiki/Haiku_%28operating_system%29) according with Wikipedia: *Haiku is a free and open-source operating system compatible with the now discontinued BeOS.* Since it implements the [POSIX](https://en.wikipedia.org/wiki/POSIX) API we can run many Unix compatible software like the Lua interpreter, LuaRocks and some Lua libraries. 

First thing we need to do is to get the last nightly version of Haiku in <http://download.haiku-os.org/> ([direct download link](http://download.haiku-os.org/nightly-images/x86_gcc2_hybrid)).

Boot on VirtualBox and use the app HaikuDepot to install *lua* and *lua\_devel*

![open Haiku's package manager](/pub/images/opening_HaikuDepot.png)

Search for **lua**

![Search for Lua](/pub/images/search_for_lua.png)

Check the option *Develop Packages* on the menu *Show*

![Check the devel package option](/pub/images/check_Develop_packages.png)

Install the package *lua\_devel* and you will probable be asked to install the package *lua* too, if not do it yourself.

![Install lua devel package](/pub/images/install_lua_devel.png)


## Building LuaRocks

Since *git* is pre installed you can go on and clone [LuaRocks](https://github.com/keplerproject/luarocks) and build it. You will need to pass three flags, **--with-lua** for where is the bin folder where the Lua interpreter binary is, **--with-lua-include** for the Lua headers and **--prefix** for where you want things to be installed.

    $ git clone https://github.com/keplerproject/luarocks
    $ cd luarocks
    $ ./configure --with-lua=/system --with-lua-include=/system/develop/headers --prefix=/Haiku/home/.lua
    $ make -j3 build
    $ make install

Use LuaRocks's command *path* to set Lua's *path* and *cpath*, and add LuaRocks bin folder to PATH

    eval `./.lua/bin/luarocks path`
    export PATH=$PATH:~/.lua/bin/


## Installing LuaRocks fork

Clone [LuaSocket](https://github.com/xspager/luasocket) fork with links LuaSocket with the Haiku's lib network.

    $ git clone https://github.com/xspager/luasocket
    $ cd luasocket
    $ luarocks make luasocket-scm-0.rockspec 


## Create a test app to see if we succeeded

    $ cd ~
    $ sailor create sailor_test
    $ cd sailor_test
    $ lua start-server.lua

![Sailor app running on the WebPositive browser](/pub/images/sailor_test_app_on_browser.png)


