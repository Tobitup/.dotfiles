#!/bin/bash
# Get battery percentage using acpi
battery_percentage=$(acpi -b | grep -o '[0-9]*%' | head -n 1 | tr -d '%')

# Get battery status (charging or discharging)
battery_status=$(acpi -b | grep -o 'Discharging|Charging')

# Assign an appropriate icon based on battery percentage
if [ "$battery_status" == "Charging" ]; then
  icon="" 
elif [ "$battery_percentage" -ge 100]; then
  icon=""
elif [ "$battery_percentage" -ge 75 ]; then
  icon=""  # Full icon
elif [ "$battery_percentage" -ge 50 ]; then
  icon=""  # Medium icon
elif [ "$battery_percentage" -ge 25 ]; then
  icon=""  # Low icon
else
  icon=""  # Very low icon
fi

# Return battery icon with percentage
echo "$icon $battery_percentage%"
