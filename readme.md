# ![](https://cdn0.iconfinder.com/data/icons/HDRV/32/Grey_Server_B.png) QServ [![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/deathstar/qserv2020/wiki/) 

QServ is a Cube 2: Sauerbraten server mod that is written entirely in C and C++. The entire command system is split away from the existing server, allowing for ease of upgradability and to allow anyone to easily create their own server commands. The mod attempts to not be too intrusive into existing server architecture, however it accomodates the ever-growing FPS feature demand and expands on gameplay potential and modification. 

FEATURES
-------------

30+ commands, GeoIP or HTTP city/region & country geolocation by IP, IRC Bot with commands, mobile phone IRC server administration (kick/ban/etc.), multi-server chat linkage, smartbot (weather/translator/dictionary/calculator), killing spree messages, server stored maps, longshot/close up kills, beststats, pass-the-flag, command builder, reloadable server configuration/authkeys live without restart, banlist, selective unbanning, banning by ip, permanent banning (even after restart), chat/server log with time, automatically sent maps with lightmaps, lag detection, instagib on automatically sent maps from the server with lights, no teamkill damage toggle, no damage toggle, stored flagrun times, banner messages, no 1 person private mode toggle, greet clients with name toggle, default gamemode/map option, reloadable authkey system (add authkeys from the server), spam protection, overload protection, clanwar command (starts a timer and enables persistent teams), ability to call administrators from server, etc.

DOWNLOAD
---------------

Github offers a compressed zip (link below) or you can git clone the repository from the command line

direct download link: https://codeload.github.com/deathstar/qserv2020/zip/master

command line download: git clone https://github.com/deathstar/qserv2020


QUICK SETUP
-----------------

Please read the wiki as it has more detailed information: https://github.com/deathstar/QServ2020/wiki/Setting-Up-Your-Server. 

You can simply use the included precompiled executables in the qserv2020-main/bins folder. please move the qserv osx or qserv linux (according to if you're on mac osx or linux) executable into the root qserv2020-main folder and rename it qserv, then run the server executable by executing ./qserv. If the x64 executables are not compatible with your system, then please compile QServ yourself and create your own executable by following the steps below:

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
 - update from Terminal: "sudo apt-get update"
 
**WINDOWS**

- A Windows version of QServ will be available soon

Compiling Instructions
--------------------------

Please make sure you have all of the requirements for compiling (listed above) installed before continuing.

1) Download QServ by [clicking here](https://codeload.github.com/deathstar/qserv2020/zip/master) or run "git clone https://github.com/deathstar/qserv2020.git" from command line (requires git): "sudo apt-get install git-all" or http://sourceforge.net/projects/git-osx-installer/

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
- Type "chmod 777 config/flagruns.cfg" from the command line to give QServ permission to store flagruns. (recommended)
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

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

MORE HELP
---------------

For info about modding, creating commands & more please view the Wiki: https://github.com/deathstar/qserv2020/wiki 

If you still need help, you can email the main developer: gscottmalibu@gmail.com





