#!/bin/bash

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

status="$(pmset -g batt | egrep "([0-9]+\%).*" -o)"
substring1="discharging"
charge="$(cut -d '%' -f 1 <<< "$status")"

if [ "${status/$substring1}" = "$status" ] ; then
  #echo "charging..."
  if (( "$charge" >= 80 )) ; then
     # notify
     thescript='display notification "You can now unplug the power cord to extend the overall battery life." with title "BatteryLifeExtender" subtitle '
     the2part="\"Unplug your Mac! Charge is ${charge}%\""
     /usr/bin/osascript -e "${thescript}${the2part}"
  fi
else
  #echo "discharging..."
  if (( "$charge" <= 40 )) ; then
     # notify
     thescript='display notification "You should plug your Mac to a power outlet to extend the overall battery life." with title "BatteryLifeExtender" subtitle '
     the2part="\"Plug you Mac! Charge is ${charge}%\""
     /usr/bin/osascript -e "${thescript}${the2part}"
  fi
fi
