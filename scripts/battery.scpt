set batteryPercent to do shell script "pmset -g batt | grep -Eo '[0-9]{2,3}%'"
if batteryPercent < 20 then
    say "Please charge me. I'm low on battery."
    display dialog batteryPercent & " charged."
else
    display dialog "we good"
end if
