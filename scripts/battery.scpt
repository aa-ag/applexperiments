set batteryPercent to do shell script "pmset -g batt | grep -Eo '[0-9]{2,3}%'"
if batteryPercent < 25 then
    say "[[ rate 150 ]] Please charge me. I'm low on battery." using "Daniel"
    display dialog batteryPercent & " charged."
else
    display dialog "we good"
end if
