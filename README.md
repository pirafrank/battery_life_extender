# Battery Life Extender
The niblest solution of a battery life extender for OS X

## Why

Just because nowadays Macbooks have non-removable battery.

## How it works

A short bash script is copied in ```/usr/local/bin``` and it is executed every 8 minutes by the built-in OS X utility *Launchd* (an Apple equivalent of Linux crontab).

It asks the operating system for the battery level. If it is >80% while charging or <40% while not in charnge, it sends a notification. Those battery levels were chosen after a long search on how lithium battery works and how Apple implemented them in Macbooks.

That's why it's the niblest battery life extender utility: it uses what's OS X already has!

## Warranty

Although the long search I've done, this utility comes with ABSOLUTE NO WARRANTY. USE IT AT YOUR OWN RISK.

**...no warranty so? What's your experience? Do you use it? What do you think?**

Yes, I use it daily. It's always running on my Macbook since 1 year. I did it for myself and I think it's good.

## Requirements

OS X 10.8 or above (due the need of notification center!). 

Tested on Mavericks and Yosemite.

## Installation

Step 0: download the repo as zip file, then unzip it. Open terminal in newly unzipped folder.

Step 1: `sudo cp batterylifeextender.sh /usr/local/bin/batterylifeextender`

Step 2: `sudo chmod +x /usr/local/bin/batterylifeextender`

Step 3: `cp com.fpira.batterylifeextender.plist ~/Library/LaunchAgents/`

Step 4: `launchctl load ~/Library/LaunchAgents/com.fpira.batterylifeextender.plist `

## What's next

- Installer (.pkg)
- ON/OFF toggle option
- User's customization: Battery ranges (...maybe)

## License
The software in this repository are released under the GNU GPLv3 License by Francesco Pira (dev[at]fpira[dot]com, fpira.com). You can read the terms of the license [here](http://www.gnu.org/licenses/gpl-3.0.html).

