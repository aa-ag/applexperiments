set batteryPercent to (do shell script "pmset -g batt")
display dialog batteryPercent