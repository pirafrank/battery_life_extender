#!/bin/bash

# Battery Life Extender install script

########################################################################
# BatteryLifeExtender <https://github.com/pirafrank/battery_life_extender>
# Notifies the user when plug or unplug the power cord to extend
# the overall battery life
#
# Copyright (C) 2015 Francesco Pira <dev@fpira.com>
#
# This file is part of battery_life_extender
#
# battery_life_extender is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# battery_life_extender is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with battery_life_extender. If not, see <http://www.gnu.org/licenses/>.
#
########################################################################

if [[ $EUID -ne 0 ]]; then
    echo "Sorry, no root priviledges."
    echo "Please rerun using 'sudo'!
    "
    exit 1
fi

echo "#####################
Welcome to battery life extender install script!
#####################"

mkdir -p /tmp/batterylifeextender
cd /tmp/batterylifeextender

echo "

Downloading executables..."
curl -o "batterylifeextender.sh" https://github.com/pirafrank/battery_life_extender/raw/master/batterylifeextender.sh
curl -o "com.fpira.batterylifeextender.plist" https://github.com/pirafrank/battery_life_extender/raw/master/com.fpira.batterylifeextender.plist

echo "
Installing..."
mkdir -p /usr/local/bin
cp batterylifeextender.sh /usr/local/bin/batterylifeextender
chmod +x /usr/local/bin/batterylifeextender
cp com.fpira.batterylifeextender.plist /Library/LaunchAgents/
launchctl load /Library/LaunchAgents/com.fpira.batterylifeextender.plist

echo "
Cleaning up..."
rm -rf /tmp/batterylifeextender
echo "
All done

"
