# Battery Life Extender
The niblest solution of a battery life extender for OS X

## Why

Just because nowadays Macbooks have non-removable battery.

## How it works

A short bash script is copied in ```/usr/local/bin``` and it is executed every 8 minutes by the built-in OS X utility *Launchd* (an Apple equivalent of Linux crontab).

It asks the operating system for the battery level. If it is >80% while charging or <40% while not in charnge, it sends a notification. Those battery levels were chosen after a long search on how lithium battery works and how Apple implemented them in MacBooks.

That's why it's the nimblest battery life extender utility: it uses what's OS X already has!

## Warranty

Although the long search I've done, this utility comes with ABSOLUTE NO WARRANTY. USE IT AT YOUR OWN RISK.

**...no warranty so? What's your experience? Do you use it? What do you think?**

Yes, I use it daily. It's always running on my Macbook since 1 year. I did it for myself and I think it's good.

## Requirements

OS X 10.8 or above (due the need of notification center!).

Tested on Mavericks and Yosemite.

## Installation

Open Terminal and type:

`curl http://github.com/pirafrank/battery_life_extender/raw/master/install.sh | sudo bash`

You may need to reboot to fully apply changes (YMMV).

**Installation notes**

Root privileges are needed to install the script and Launchd file under system folders. But don't worry, the script will be executed as regular user as it's copied to `/Library/LaunchAgents`. Check the [launchd.info](http://launchd.info/) website for more details.

## Uninstall

Open Terminal and type:

`curl http://github.com/pirafrank/battery_life_extender/raw/master/uninstall.sh | sudo bash`

**Notes**

The script simply unloads the script and delete the two copied files.

## Next features...

* .pkg installer (needed?)
* ON/OFF toggle option
* User's customization: Battery ranges (...maybe)

## License
The software in this repository are released under the GNU GPLv3 License by Francesco Pira (dev[at]fpira[dot]com, fpira.com). You can read the terms of the license [here](http://www.gnu.org/licenses/gpl-3.0.html).

