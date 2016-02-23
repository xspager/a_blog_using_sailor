# Use HereRocks to compile a Lua version

<https://github.com/mpeterv/hererocks>

We can use a Python package that can build a complete independent Lua environment for us

You can create a virtualenv or install as root with pip install hererocks

(hererocks-ve)$ hererocks -l 5.3 -r^ ~/.lua/53

    $ deactivate # since we don't need hererocks anymore for now
    $ echo 'export PATH=$PATH:~/.lua/53/bin' >> ~/.profile # the >> is important to not overwrite your .profile file
    $ source ~/.profile # when you log in again this won't be necessary
    $ luarocks install sailor # now we can install sailor

