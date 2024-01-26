# ![](https://cdn0.iconfinder.com/data/icons/HDRV/32/Grey_Server_B.png) QServ2020 [![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/deathstar/qserv2020/wiki/) ![](https://img.shields.io/badge/build-passing-success) ![](https://img.shields.io/badge/dependencies-zlib%2C%20build--essential%2C%20cmake-success)

[QServ](https://techmasterdesign.com/qserv/) is a standalone Cube 2: Sauerbraten server that is written entirely in C and C++. The entire command system is split away from the existing server, allowing for ease of upgradability and to allow anyone to easily create their own server commands. The server features complimentary functions 
for C++ and C that allow users to easily create their own commands, functions, and modifications. 

FEATURES
-------------

40+ commands, GeoIP or HTTP city/region & country geolocation by IP, IRC Bot with commands, mobile phone IRC server administration (kick/ban/etc.), multi-server chat linkage, custom bot names, show admins client IPs on connect, smartbot (weather/translator/dictionary/calculator), killing spree messages, server stored maps, longshot/close up kills, end game stats, pass-the-flag, server command builder, reloadable server configuration/authkeys live without restart, banlist, selective unbanning, banning by ip, permanent banning (even after restart), chat/server log with time, automatically sent maps with lightmaps, lag detection, instagib on automatically sent maps from the server with lights, no damage toggle, stored flagrun times, banner messages, no 1 person private mode toggle, greet clients with name toggle, default gamemode/map option, spam protection, overload protection, clanwar command (starts a timer and enables persistent teams), ability to call administrators from server, etc.

QUICK SETUP
-----------------

You can simply use the included precompiled executables in the qserv2020-main/bins folder. please move the qserv osx or qserv linux (according to if you're on mac osx or linux) executable into the root qserv2020-main folder and rename it qserv, then run the server executable by executing ./qserv. If the x64 executables are not compatible with your system, or you wish to have the most up to date version of QServ, then please compile QServ yourself and create your own executable by following the steps below:

REQUIREMENTS FOR COMPILING
-----------------------------------------

**MAC OSX**

- xCode: Go to the App Store and download "xCode," or visit: https://developer.apple.com/xcode/download/
- xCode command Line tools, run: "xcode-select --install" from Terminal after xCode is installed
- CMake: download CMake for command line, or a GUI from https://cmake.org/download/

**LINUX**

 - install CMake from terminal: "sudo apt-get install cmake" 
 - install Zlib from Terminal: "sudo apt-get install zlib1g-dev"
 - install a compiler from Terminal: "sudo apt-get install build-essential"
 
**WINDOWS**

- A Windows version of QServ will be available soon

COMPILATION INSTRUCTIONS
--------------------------

Please make sure you have all of the requirements for compiling (listed above) installed before continuing.

1) Download QServ by [clicking here](https://codeload.github.com/deathstar/qserv2020/zip/master) or run "git clone https://github.com/deathstar/QServ2020" from command line (requires git): "sudo apt-get install git" or http://sourceforge.net/projects/git-osx-installer/

2) place the qserv2020 folder on your Desktop and make sure it's named accordingly 

3) Open command line and type: "cd Desktop/qserv2020"

4) Run the cmake command (or select the qserv2020 folder from the CMake GUI): "cmake ."

5) Run the make command: "make"

6) Run the start server command: "./qserv" for a live log, "nohup ./qserv &" for background

Note: if you just use "./qserv" you will need to keep the window open to keep the server running. It is suggested that you always run "nohup ./qserv &" to keep the server up in the background and output the log to nohup.out.

- Press Control-C to stop, or use "top" to get the PID of QServ then use "kill PID" to kill a background server

CONFIGURATION
---------------------

- Configure general attributes in config/server-init.cfg
- Add authkeys in config/users.cfg
- Type "chmod -R 777 config" from the command line to give QServ permission to access the configuration files
- Create a "packages/base" folder set in the QServ root directory. Then, type "chmod -R 777 packages" from the command line to give QServ permission to store maps. (optional)

TROUBLESHOOTING
-------------------------

Can't see player city/state/country msg: try using geoIP geolocation instead of HTTP. To do this, change "usehttpgeolocation 1" to "usehttpgeolocation 0" in config/server-init.cfg. Also, make sure the file permissions are set to allow QServ access to the config folder. You can just use "chmod -R 777 qserv2020" from the command line. 

flagruns not storing: You can just use "chmod -R 777 qserv2020" from the command line to give QServ access to its files.

QServ IRC not launching at all: you either restarted the server too much or flooded IRC, try a different IRC server.

segmentation fault: send the server logs to DeathStar - gscottmalibu@gmail.com for debugging.

MIT LICENSE 
----------------

Copyright (c) 2020 George Scott

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

the software is provided "as is", without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. in no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

MORE HELP
---------------

For info about modding, creating commands & more please view the Wiki: https://github.com/deathstar/qserv2020/wiki 

If you still need help, you can email the main developer: gscottmalibu@gmail.com





