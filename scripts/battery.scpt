set batteryPercent to do shell script "pmset -g batt | grep -Eo '[0-9]{2,3}%'"
if batteryPercent < 20 then
    display dialog batteryPercent & " charged."
else
    display dialog "we good"
end if
