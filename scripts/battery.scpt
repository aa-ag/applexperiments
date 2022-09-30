set batteryPercent to do shell script "pmset -g batt | grep -Eo '[0-9]{2,3}%'"
display dialog batteryPercent & " charged."
