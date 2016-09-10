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

if ! sudo -v >/dev/null 2>&1; then
    echo "Sorry, no root priviledges."
    echo "Please rerun using 'sudo'!
    "
    exit 1
fi

echo "#####################
Welcome to battery life extender uninstall script!
#####################"

echo "

Uninstalling..."
sudo launchctl unload /Library/LaunchAgents/com.fpira.batterylifeextender.plist
sudo rm -rf /Library/LaunchAgents/com.fpira.batterylifeextender.plist
rm -rf /usr/local/bin/batterylifeextender

echo "
All done!
"
