# Running Sailor on the Haiku Operating System

Get the last nightly version of the recommended variation in [http://download.haiku-os.org/](http://download.haiku-os.org/)  ([direct download link](http://download.haiku-os.org/nightly-images/x86_gcc2_hybrid)).

Boot on VirtualBox and use the app HaikuDepot to install *lua* and *lua_devel*

![Haiku something](/pub/images/opening_HaikuDepot.png)

Search for **lua**

![Search for Lua](/pub/images/search_for_lua.png)

Check the option *Develop Packages* on the menu *Show*

![Check the devel thing](/pub/images/check_Develop_packages.png)

Install the package *lua_devel* and you will probable be asked to install the package *lua* too, if not do it yourself.

![Install Lua devel package](/pub/images/install_lua_devel.png)


## Building LuaRocks

Since *git* is preinstalled you can go on and clone [LuaRocks](https://github.com/keplerproject/luarocks) and build it. You will need to pass three flags, **--with-lua** for where is the bin folder where the Lua interpreter binary is, **--with-lua-include** for the Lua headers and **--prefix** for where you want things to be installed.

    $ git clone https://github.com/keplerproject/luarocks
    $ cd luarocks
    $ ./configure --with-lua=/system --with-lua-include=/system/develop/headers --prefix=/Haiku/home/.lua
    $ make -j3 build
    $ make install

Use LuaRocks's command *path* to set path and cpath, add LuaRocks bin path to PATH

    eval `./.lua/bin/luarocks path`
    export PATH=$PATH:~/.lua/bin/


## Installing LuaRocks fork

Clone [LuaSocket](https://github.com/xspager/luasocket) fork with links luasocket with the Haiku's lib network.

    $ git clone https://github.com/xspager/luasocket
    $ cd luasocket
    $ luarocks make luasocket-scm-0.rockspec 


## Create a test app to see if we succeded

    $ cd ~
    $ sailor create sailor_test
    $ cd sailor_test
    $ lua start-server.lua

![Sailor app running on the WebPositive browser](/pub/images/sailor_test_app_on_browser.png)


