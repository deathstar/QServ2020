# ![](https://cdn0.iconfinder.com/data/icons/HDRV/32/Grey_Server_B.png) QServ [![Build Status](https://travis-ci.org/deathstar/qserv2020.svg?branch=master)](https://travis-ci.org/deathstar/qserv2020) [![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/deathstar/qserv2020/wiki/Contributing) 

QServ is a Cube 2: Sauerbraten server mod that is written entirely in C and C++. The entire command system is split away from the existing server, allowing for ease of upgradability and to allow anyone to easily create their own server commands. The mod attempts to not be too intrusive into existing server architecture, however it accomodates the ever-growing FPS feature demand. 

FEATURES
--------

30+ commands, GeoIP city/region & country, IRC Bot with commands, mobile phone IRC server administration (kick/ban/etc.), multi-server chat linkage, smartbot (weather/translator/dictionary/calculator), killing spree messages, server stored maps, longshot/close up kills, beststats, pass-the-flag, command builder, reloadable server configuration/authkeys live without restart, banlist, selective unbanning, banning by ip, permanent banning (even after restart), chat/server log with time, automatically sent maps with lightmaps, lag detection, instagib on automatically sent maps from the server with lights, no teamkill damage toggle, no damage toggle, stored flagrun times, banner messages, no 1 person private mode toggle, greet clients with name toggle, default gamemode/map option, reloadable authkey system (add authkeys from the server), spam protection, overload protection, clanwar command (starts a timer and enables persistent teams), ability to call administrators from server, etc.

DOWNLOAD
--------

Github offers a compressed zip (link below) or you can git clone the repository from the command line

direct download link: https://codeload.github.com/deathstar/qserv2020/zip/master

command line download: git clone https://github.com/deathstar/qserv2020


QUICK SETUP
-----------

You can simply use the included precompiled executables in the qserv2020-main/bins folder. please move the qserv osx or qserv linux (according to if you're on mac osx or linux) executable into the root qserv2020-main folder and rename it qserv, then run the server executable by executing ./qserv. If the x64 executables are not compatible with your system (for example, if you have a 32 bit operating system), then please compile QServ yourself and create your own executable by following the steps below:

REQUIREMENTS FOR COMPILING
--------------------------

**MAC OSX**

- xCode: Go to the App Store and download "xCode," or visit: https://developer.apple.com/xcode/download/
- xCode command Line tools: run: "xcode-select --install" from Terminal after xCode is installed
- CMake: download CMake for command line from https://cmake.org/download/

**LINUX**

 - Cmake: download CMake for command line from https://cmake.org/download/ or run "sudo apt-get install cmake" 
 - install Zlib from Terminal: "sudo apt-get install zlib1g-dev"
 - install a compiler from Terminal: "sudo apt-get install build-essential"
 - update from Terminal: "sudo apt-get update"
 
**WINDOWS**

- A Windows version of QServ can be constructed upon request

Compiling Instructions
----------------------

Please make sure you have all of the requirements for compiling (listed above) installed before continuing.

[Instructional video on how to download/install (compile) QServ](http://techmaster.mooo.com/download/howto_install_qserv.mp4)

1) Download QServ by [clicking here](https://codeload.github.com/deathstar/qserv2020/zip/master) or run "git clone https://github.com/deathstar/qserv2020.git" from command line (requires git): "sudo apt-get install git-all" or http://sourceforge.net/projects/git-osx-installer/

2) place the qserv2020 folder on your Desktop and make sure it's named accordingly 

3) Open command line and type: "cd Desktop/qserv2020"

4) Run the cmake command (or select the qserv2020 folder from the CMake GUI): "cmake ."

5) Run the make command: "make"

6) Run the start server command: "./qserv" for a live log, "nohup ./qserv &" for background

Note: if you just use "./qserv" you will need to keep the window open to keep the server running. It is suggested that you always run "nohup ./qserv &" to keep the server up in the background and output the log to nohup.out.

- Press Control-C to stop, or use "top" to get the PID of QServ then use "kill PID" to kill a background server

CONFIGURATION
-------------

- Configure general attributes in config/server-init.cfg
- Add authkeys in config/users.cfg
- Type "chmod 777 config/flagruns.cfg" from the command line to give QServ permission to store flagruns. (recommended)
- Create a "packages/base" folder set in the QServ root directory. Then, type "chmod -R 777 packages" from the command line to give QServ permission to store maps. (optional)

TROUBLESHOOTING
--------------- 

"command not found: cmake .": cmake is not installed, see above for download link.

library not found -lenet: run these commands: cd enet; rm CMakeCache.txt; rm cmake_install.cmake; rm CMakeFiles; cmake .; make, you should be able to compile enet on your system to create the required libenet.a file. If there is an issue using the provided enet file, please try to compile your own (you may also have to remove the existing 

Can't see player city/state/country msg: try using geoIP geolocation instead of Curl. To do this, rename the text file in the qserv2020 root directory something other than "usecurl.txt." Make sure the file permissions are set to allow QServ access to the curl folder and its contents, along with the entire config folder and usecurl.txt (if you're using curl). You can just use "chmod -R 777 qserv2020" from the command line. Please note that with curl geolocation, the #whois and #stats commands will not show player locations. 

flagruns not storing: You can just use "chmod -R 777 qserv2020" from the command line to give QServ access to its files.

"make: *** No targets specified and no makefile found.  Stop.": the cmake . command was not issued before make.

"No such file or directory": you are changing directories into an invalid folder, make sure qserv2020 is the name

"Segmentation fault: 11" on launch: wait for IRC to start! Retry the launch (it will work the second time). Also, please remember the IRC bot is experimental. I have been working on some fixes for it but the threading conflicts make it difficult.
 
"Segmentation fault" at a random time after launch: contact DeathStar @ gscottmalibu@gmail.com.

QServ IRC not working (incompatable client): Retry the launch (it will work the second time).

QServ IRC not launching at all (excess flood): you either restarted the server too much or flooded IRC, time will fix.

No such file or directory "GeoIP.h": this means some GeoIP file is missing, most likely your download was corrupt.

MORE HELP RESOURCES 
-------------------

For info about modding, creating commands & more please view the Wiki: https://github.com/deathstar/qserv2020/wiki 

If you still need help, you can email the main developer: gscottmalibu@gmail.com



